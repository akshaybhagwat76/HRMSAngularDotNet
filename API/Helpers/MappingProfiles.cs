using API.Dtos;
using AutoMapper;
using Core.Entities;
namespace API.Helpers
{
    public class MappingProfiles : Profile
    {
        public MappingProfiles()
        {
            CreateMap<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto, TBL_HR_EMPLOYEE_EDUCATION_DETAILS>();
        }
    }
}
