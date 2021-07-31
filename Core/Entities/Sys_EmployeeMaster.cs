using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Core.Entities
{

    [Table("tbl_EmployeeMaster")]
    public class Sys_EmployeeMaster : BaseEntity, IAuditableEntity
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
        public int ReferenceEmployeeName { get; set; }
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
        public DateTime CreatedOn_Date { get; set; }
        public int CreatedBy_Login_User_Id { get; set; }
        public int CreatedBy_Login_Session_Id { get; set; }
        public string CreatedFrom_Page { get; set; }
        public int CreatedFrom_Sub_Menu_Id { get; set; }
        public string CreatedFrom_API_Name { get; set; }
        public DateTime UpdatedOn_Date { get; set; }
        public int? UpdatedBy_Login_User_Id { get; set; }
        public int? UpdatedBy_Login_Session_Id { get; set; }
        public string UpdatedFrom_Page { get; set; }
        public int? UpdatedFrom_Sub_Menu_Id { get; set; }
        public string UpdatedFrom_API_Name { get; set; }

    }
}
