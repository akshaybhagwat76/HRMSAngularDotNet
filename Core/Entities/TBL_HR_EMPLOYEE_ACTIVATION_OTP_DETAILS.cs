using System;
namespace Core.Entities
{
    public class TBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILS : BaseEntity, IAuditableEntity
    {
        public int Employee_Id { get; set; }
        public string OTP_Details { get; set; }
        public DateTime OTP_Genaration_Date { get; set; }
        public DateTime OTP_Valid_From { get; set; }
        public DateTime OTP_Valid_To { get; set; }
        public int Status_Id { get; set; }        
        public DateTime CreatedOn_Date { get ; set ; }
        public int CreatedBy_Login_User_Id { get ; set ; }
        public int CreatedBy_Login_Session_Id { get ; set ; }
        public string CreatedFrom_Page { get ; set ; }
        public int CreatedFrom_Sub_Menu_Id { get ; set ; }
        public string CreatedFrom_API_Name { get ; set ; }
        public DateTime UpdatedOn_Date { get ; set ; }
        public int? UpdatedBy_Login_User_Id { get ; set ; }
        public int? UpdatedBy_Login_Session_Id { get ; set ; }
        public string UpdatedFrom_Page { get ; set ; }
        public int? UpdatedFrom_Sub_Menu_Id { get ; set ; }
        public string UpdatedFrom_API_Name { get ; set ; }
    }
}
