using System;
using System.Collections.Generic;

namespace API.Dtos
{
    public class Sys_Identity_ProofDto : BaseDto
    {
        public string Identity_Type { get; set; }
        public string Identity_No { get; set; }
        public List<TBL_Identity_Proof_AttachementsDto> Attachments { set; get; }
        public DateTime Valid_Upto { get; set; }
        public int OtherInformationId { get; set; }
    }
}
