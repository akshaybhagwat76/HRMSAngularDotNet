using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Tbl_HR_EmployeeDto : BaseDto
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
        [Required]
        [DataType(DataType.EmailAddress)]
        [EmailAddress]
        public string Email_Id { get; set; }
        public string Mobile_No { get; set; }
        public string Profile_Pic_Path { get; set; }
        public string Signature_Pic_Path { get; set; }
        public int Login_User_Id { get; set; }
        public bool IsExperiance { get; set; }
        public int No_Of_Update { get; set; }

    }
}
