using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace API.Dtos
{
    public class TBL_HR_EMPLOYEE_FAMILY_DETAILSDto
    {
        public int Id { get; set; }

        [Required]
        public int Employee_Id { get; set; }
        public int Enum_Id_Relationship { get; set; }

        [Required]
        public string Member_Name { get; set; }

        [Required]
        public string Member_Mobile { get; set; }
        public string Member_EmailId { get; set; }
        [DataType(DataType.DateTime)]
        [Required]
        public DateTime Member_DOB { get; set; }
        public int Enum_Id_Identity { get; set; }
        public string Identity_Number { get; set; }
        public bool Is_Verfied { get; set; }
        public DateTime Date_Valid_From { get; set; }
        public DateTime Date_Valid_Upto { get; set; }
        public string AttachmentType_Path { get; set; }
        public string Attachment_Type { get; set; }
    }
}
