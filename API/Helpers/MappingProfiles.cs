using API.Dtos;
using AutoMapper;
using Core.Entities;
namespace API.Helpers
{
    public class MappingProfiles : Profile
    {
        public MappingProfiles()
        {
            CreateMap<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto, TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().ReverseMap();
            CreateMap<Sys_CompnayDto, sys_Compnays>().ReverseMap();
            CreateMap<Sys_DEPARTMENTDto, Sys_DEPARTMENT>().ReverseMap();
            CreateMap<Sys_BranchDto, Sys_Branch>().ReverseMap();
            CreateMap<Sys_DESIGNATIONDto, Sys_DESIGNATION>().ReverseMap();
            CreateMap<Sys_COUNTRYDto, Sys_COUNTRY>().ReverseMap();
            CreateMap<Sys_WorkingStatusDto, Sys_WorkingStatus>().ReverseMap();
        }
    }
}
