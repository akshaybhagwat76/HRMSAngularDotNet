using System;
using System.Linq;
using System.Reflection;
using API.Helpers;
using API.Middleware;
using Core.Interfaces;
using Infrastructure.Data;
using Infrastructure.Identity;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
namespace API
{
    public class Startup
    {
        private const string DefaultCorsPolicyName = "http://localhost:4200/";

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddCors(c =>
            {

                c.AddPolicy("AllowOrigin", builder =>
                    builder.AllowAnyOrigin());
            });
            services.AddScoped<IUnitOfWork, UnitOfWork>();
            services.AddAutoMapper(typeof(MappingProfiles));
            services.AddDbContext<StoreContext>(x => x.UseSqlServer(Configuration.GetConnectionString("FreelencerDB")));
            //services.AddDbContext<AppIdentityDbContext>(x => x.UseSqlServer(Configuration.GetConnectionString("IdentityConnection")));
            services.AddSwaggerGen();
            services.AddControllers();
            var appSettingsSection = Configuration.GetSection("AppSettings");

            services.AddCors(options =>
            {
                options.AddPolicy(DefaultCorsPolicyName, builder =>
                {
                    builder
                        .WithOrigins(
                                 // App:CorsOrigins in appsettings.json can contain more than one address separated by comma.
                                 appSettingsSection.GetSection("CorsOrigins").Value
                                .Split(",", StringSplitOptions.RemoveEmptyEntries)
                                .Select(o => o.RemovePostFix("/"))
                                .ToArray()
                        )
                        .SetIsOriginAllowedToAllowWildcardSubdomains()
                        .AllowAnyHeader()
                        .AllowAnyMethod()
                        .SetIsOriginAllowed((host) => true)
                        .AllowCredentials();
                });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app.UseMiddleware<ExceptionMiddleware>();

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            app.UseCors(DefaultCorsPolicyName); //Enable CORS!

            app.UseHttpsRedirection();
            app.UseRouting(); 
            app.UseAuthorization();
            app.UseCors("AllowOrigin");
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "HRSM");
            });
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
