using System;
using System.Collections.Generic;
using System.Text;

namespace API.Dtos
{
    public class TBL_HR_LOGIN_USER : BaseDto
    {
        public int Login_User_System_Code { get; set; }
        public string Login_Id { get; set; }
        public string Salt_Value { get; set; }
        public string Hash_Password { get; set; }
        public bool Is_Password_Reset_Required { get; set; }
        public DateTime Password_ChangedOn_Date { get; set; }
        public int Wrong_Password_Attempt { get; set; }
        public DateTime Account_LockedOn_Date { get; set; }
        public DateTime Login_Valid_Upto_Date { get; set; }
        public string Reference_Table_Name { get; set; }
        public int Reference_Primary_Id { get; set; }
        public int Login_User_Type_Id { get; set; }
    }
}
