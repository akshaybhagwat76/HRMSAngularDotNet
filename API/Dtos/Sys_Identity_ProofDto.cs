using System;
namespace API.Dtos
{
    public class Sys_Identity_ProofDto : BaseDto
    {
        public string Identity_Type { get; set; }
        public string Identity_No { get; set; }
        public string Attachments { set; get; }
        public string Attachments_File_Name { get; set; }
        public DateTime Valid_Upto { get; set; }
        public int OtherInformationId { get; set; }
    }
}
