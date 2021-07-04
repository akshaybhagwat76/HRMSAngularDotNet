using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Persistent.Repository;
using System;
using System.Collections.Generic;
using System.Text;

namespace Persistent
{
    public static class DatabaseConfigration
    {
        public static IServiceCollection AddPersistentLayer(this IServiceCollection services, IConfiguration configrution)
        {
            services.AddDbContext<FreelencerDBContext>(db => db.UseSqlServer(configrution.GetConnectionString("FreelencerDB"),o=>o.MigrationsAssembly("Persistent")));
            services.AddScoped(typeof(IRepository<>),typeof(Repository<>));
            return services;
        }
    }
}
