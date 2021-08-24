using System;
namespace API.Dtos
{
    public class TBL_Professional_Information_AttachementsDto : BaseDto
    {

        public int Professional_Information_Attachements_Id { get; set; }
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string DocumentType { get; set; }
        public string DocumentUrl { get; set; }
      
    }
}
