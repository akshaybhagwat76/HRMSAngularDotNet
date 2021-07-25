using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Core.Entities
{
    [Table("tbl_HR_Employees")]
    public class Tbl_HR_Employee : BaseEntity, IAuditableEntity
    {
        public string Emp_Name { get; set; }
        public string Emp_Code { get; set; }
        public string Emp_System_Code { get; set; }
        public string Emp_Biometric_Code { get; set; }
        public int Acct_Id { get; set; }
        public int Company_Id { get; set; }
        public int Branch_Id { get; set; }
        public int Warehouse_Id { get; set; }
        public int ProductionUnit_Id { get; set; }
        public int Department_Id { get; set; }
        public int Designation_Id { get; set; }
        public int State_Id { get; set; }
        public int HigherAuthority_Id { get; set; }
        public int ThirdParty_Id { get; set; }
        public int Enum_Id_EmpType { get; set; }
        public int Enum_Id_EmpCategory { get; set; }
        public int Enum_Id_Emp_Working_Status { get; set; }
        public bool Is_New_User { get; set; }
        public int Role_Id { get; set; }
        public string Email_Id { get; set; }
        public string Mobile_No { get; set; }
        public string Profile_Pic_Path { get; set; }
        public string Signature_Pic_Path { get; set; }
        public int Login_User_Id { get; set; }
        public bool IsExperiance { get; set; }
        public int No_Of_Update { get; set; }
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
