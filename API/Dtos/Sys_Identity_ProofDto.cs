using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Dtos
{
    public class Sys_Identity_ProofDto : BaseDto
    {
        public string Identity_Type { get; set; }
        public string Identity_No { get; set; }
        public IFormFile Attachments { set; get; }
        public string Attachments_File_Name { get; set; }
        public DateTime Valid_Upto { get; set; }
        public int OtherInformationId { get; set; }
    }
}
