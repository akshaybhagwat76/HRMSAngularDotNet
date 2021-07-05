using AutoMapper;
using API.Dtos;
using Core.Entities;

namespace API.Mapper
{
    public class ObjectMapper : Profile
    {
        public ObjectMapper()
        {
            CreateMap<Tbl_HR_Employee, Tbl_HR_EmployeeDto>().ReverseMap();
            CreateMap<TBL_HR_EMPLOYEE_DETAILS, TBL_HR_EMPLOYEE_DETAILSDto>().ReverseMap();
            CreateMap<TBL_HR_EMPLOYEE_EDUCATION_DETAILS, TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>().ReverseMap();
            CreateMap<TBL_HR_EMPLOYEE_NOMINEE_DETAILS, TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>().ReverseMap();
        }
    }
}
