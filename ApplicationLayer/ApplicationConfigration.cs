using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using Persistent;
using ApplicationLayer.Interfaces;
using ApplicationLayer.Services;

namespace ApplicationLayer
{
    public static class ApplicationConfigration
    {
        public static IServiceCollection ApplicationLayer(this IServiceCollection services, IConfiguration configrution)
        {
            services.AddPersistentLayer(configrution);
            services.AddScoped(typeof(IHREmployeeService), typeof(HREmployeeService));
            services.AddScoped(typeof(IOtherInfoService), typeof(OtherInfoService));
            services.AddScoped(typeof(IEducationService), typeof(EducationService));
            services.AddScoped(typeof(INomineeService), typeof(NomineeService));
            return services;
        }
    }
}
