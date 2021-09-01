using System;
using System.Collections.Generic;
namespace API.Dtos
{
    public class Sys_ProfessionalInformationDto : BaseDto
    {
        public string EmployeerName { get; set; }
        public bool IsDeleted { get; set; }
        public string EmployeerAddress { get; set; }
        public string Designation { get; set; }
        public string ContactPerson { get; set; }
        public string ContactNo { get; set; }
        public string EmailId { get; set; }
        public DateTime? DateOfJoining { get; set; }
        public string LastDrawnSalary { get; set; }
        public string ReasonForLeaving { get; set; }
        public DateTime? DateOfLeaving { get; set; }
        public int Employee_Id { get; set; }
        public List<TBL_Professional_Information_AttachementsDto> Attachments { get; set; }
    }
}
