using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace API.Dtos
{
   public class TBL_HR_EMPLOYEE_DETAILSDto
    {
        public int Id { get; set; }
        [Required]
        public int Employee_Id { get; set; }
        [Required]
        public int Gender_Id { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime Emp_DOB { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime Emp_DOJ { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime Emp_DOL { get; set; }
        [Required]
        public int Emp_State_Id { get; set; }
        [Required]
        public string Emp_Address { get; set; }
        public string Emp_Address2 { get; set; }
        [Required]
        public string Emp_Zip_Code { get; set; }
        [Required]
        public string Emp_City { get; set; }
        [Required]
        public string Emp_Correspond_Address { get; set; }
        public string Emp_Correspond_Address2 { get; set; }
        [Required]
        public string Emp_Correspond_Zip_Code { get; set; }
        [Required]
        public string Emp_Correspond_City { get; set; }
        public string Emp_Alternate_Mobile_No { get; set; }
        [Required]
        public string Emp_Contact_No { get; set; }
        public string Emp_Alternate_Email_Id { get; set; }
        public int Enum_Type_Id_Nationality { get; set; }
        public int Enum_Id_Nationality { get; set; }
        public int Enum_Type_Id_Religion { get; set; }
        public int Enum_Id_Religion { get; set; }
        public int Enum_Type_Id_MaritalStatus { get; set; }
        public int Enum_Id_MaritalStatus { get; set; }
        public int Enum_Type_Id_BloodGroup { get; set; }
        public int Enum_Id_BloodGroup { get; set; }
        public int Enum_Type_Id_Cast { get; set; }
        public int Enum_Id_Cast { get; set; }
        public int Enum_Type_Id_PhysicalDisability { get; set; }
        public int Enum_Id_PhysicalDisability { get; set; }
        public string Emp_IdentificationMark { get; set; }
        public int Enum_Type_Id_HighestQualification { get; set; }
        public int Enum_Id_HighestQualification { get; set; }
        public int Enum_Type_Id_Bank { get; set; }
        public int Enum_Id_Bank { get; set; }
        public string Emp_Bank_IFSC { get; set; }
        public string Emp_Bank_AccountNo { get; set; }
    }
}
