using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Dtos
{
    public class Sys_EducationalQualificationDto : BaseDto
    {
        public string Educational_Qualification { get; set; }
        public int Employee_Id { get; set; }
    }
}
