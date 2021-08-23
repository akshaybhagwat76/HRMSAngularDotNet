using System;
using System.Collections.Generic;

namespace API.Dtos
{
    public class Sys_EmployeeMasterDto : BaseDto
    {
        public int CompanyId { get; set; }
        public int EmployeeCategoryId { get; set; }
        public string EmployeeCode { get; set; }
        public string BiometricCode { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string email { get; set; }
        public int Project_BranchId { get; set; }
        public int DepartmentId { get; set; }
        public int DesignationId { get; set; }
        public int Higher_Authority_Branch_ProjectId { get; set; }
        public int Higher_AuthorityId { get; set; }
        public int Higher_Authority_NameId { get; set; }
        public DateTime Date_Of_Joining { get; set; }
        public int Employee_TypeId { get; set; }
        public string Mobile_No { get; set; }
        public int Third_Party_Type { get; set; }
        public int Third_Party_Id { get; set; }
        public int Working_StatusId { get; set; }
        public int Probation_Period { get; set; }
        public string ReferenceEmployeeName { get; set; }
        public string Reference_Phone_No { get; set; }
        public DateTime Date_Of_Birth { get; set; }
        public string Gender { get; set; }
        public string Nationality { get; set; }
        public string Religion { get; set; }
        public int CastId { get; set; }
        public bool PhysicalDisability { get; set; }
        public int Blood_GroupId { get; set; }
        public int Marital_StatusId { get; set; }
        public string Identification_Mark { get; set; }
        public bool Status { get; set; }
        public List<Sys_FamilyDetailsDto> sys_FamilyDetailsDto { get; set; }
        public List<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto> sys_EducationalQualificationDto { get; set; }
        public List<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto> tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto { get; set; }
        public Sys_PermanentContactInformationDto sys_PermanentContactInformationDto { get; set; } 
        public Sys_CorresspondanceContactInformationDto sys_CorresspondanceContactInformationDto { get; set; }
        public Sys_OtherInformationDto sys_OtherInformationDto { get; set; }
    }
}
