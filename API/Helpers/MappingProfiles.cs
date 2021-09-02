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
            CreateMap<TBL_Professional_Information_AttachementsDto, TBL_Professional_Information_Attachements>().ReverseMap();
            CreateMap<TBL_Educational_Qualification_AttachementsDto, TBL_Educational_Qualification_Attachements>().ReverseMap();
            CreateMap<TBL_Identity_Proof_AttachementsDto, TBL_Identity_Proof_Attachements>().ReverseMap();
            CreateMap<Sys_CompnayDto, sys_Compnays>().ReverseMap();
            CreateMap<Sys_DEPARTMENTDto, Sys_DEPARTMENT>().ReverseMap();
            CreateMap<Sys_BranchDto, Sys_Branch>().ReverseMap();
            CreateMap<Sys_DESIGNATIONDto, Sys_DESIGNATION>().ReverseMap();
            CreateMap<Sys_COUNTRYDto, Sys_COUNTRY>().ReverseMap();
            CreateMap<Sys_WorkingStatusDto, Sys_WorkingStatus>().ReverseMap();
            CreateMap<Sys_HigherAuthorityDto, Sys_HigherAuthority>().ReverseMap();
            CreateMap<Sys_OtherInformationDto, Sys_OtherInformation>().ReverseMap();

            CreateMap<Sys_HigherAuthorityBranchesDto, tbl_HigherAuthorityBranch>().ReverseMap();
            CreateMap<Sys_HigherAuthorityNameDto, Sys_HigherAuthorityName>().ReverseMap();
            CreateMap<Sys_ThirdPartyDto, Sys_ThirdParty>().ReverseMap();
            CreateMap<Sys_ThirdPartyTypeDto, Sys_ThirdPartyType>().ReverseMap();
            CreateMap<Sys_Employee_TypeDto, Sys_Employee_Type>().ReverseMap();
            CreateMap<Sys_BloodGroupDto, Sys_BloodGroup>().ReverseMap();
            CreateMap<Sys_CastDto, Sys_Cast>().ReverseMap();
            CreateMap<Sys_MaritalStatusDto, Sys_MaritalStatus>().ReverseMap();
            CreateMap<Sys_RelationShipDto, Sys_RelationShip>().ReverseMap();
            CreateMap<Sys_EducationalQualificationDto, Sys_EducationalQualification>().ReverseMap();
            CreateMap<Sys_STATEDto, Sys_STATE>().ReverseMap();
            CreateMap<Sys_REGION_ZONEDto, Sys_REGION_ZONE>().ReverseMap();
            CreateMap<Sys_UserTypeDto, Sys_UserType>().ReverseMap();
            CreateMap<Sys_Employee_CategoryDto, Sys_Employee_Category>().ReverseMap();
            CreateMap<Sys_FamilyDetailsDto, Sys_FamilyDetails>().ReverseMap();
            CreateMap<Sys_Highest_QualificationDto, Sys_Highest_Qualification>().ReverseMap();
            CreateMap<Sys_IdentityTypeDto, Sys_IdentityType>().ReverseMap();
            CreateMap<Sys_ProfessionalInformationDto, Sys_ProfessionalInformation>().ReverseMap();
            CreateMap<Sys_EmployeeMasterDto, Sys_EmployeeMaster>().ReverseMap();

            CreateMap<Sys_PermanentContactInformation, Sys_PermanentContactInformationDto>().ReverseMap();
            CreateMap<Sys_CorresspondanceContactInformation, Sys_CorresspondanceContactInformationDto>().ReverseMap();
            CreateMap<Sys_OtherInformation, Sys_OtherInformationDto>().ReverseMap();
            CreateMap<Sys_Identity_Proof, Sys_Identity_ProofDto>().ReverseMap();

        }
    }
}
