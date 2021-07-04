﻿using System;
namespace Core.Entities
{
    public class TBL_HR_EMPLOYEE_NOMINEE_DETAILS : BaseEntity
    {
        public int Employee_Id { get; set; }
        public int Enum_Id_Relationship { get; set; }
        public string Nominee_Name { get; set; }
        public string Nominee_Mobile { get; set; }
        public string Nominee_EmailId { get; set; }
        public DateTime Nominee_DOB { get; set; }
        public int Enum_Id_Identity { get; set; }
        public string Identity_Number { get; set; }
        public bool Is_Verfied { get; set; }
        public DateTime Date_Valid_From { get; set; }
        public DateTime Date_Valid_Upto { get; set; }
        public string AttachmentType_Path { get; set; }
        public string Attachment_Type { get; set; }
    }
}
