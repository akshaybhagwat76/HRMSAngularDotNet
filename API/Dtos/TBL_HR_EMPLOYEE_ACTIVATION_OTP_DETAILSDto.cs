using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace API.Dtos
{
    public class TBL_HR_EMPLOYEE_ACTIVATION_OTP_DETAILSDto
    {
        public int Id { get; set; }
        [Required]
        public int Employee_Id { get; set; }
        [Required]
        public string OTP_Details { get; set; }
        [Required]
        public DateTime OTP_Genaration_Date { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime OTP_Valid_From { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime OTP_Valid_To { get; set; }
        [Required]
        public int Status_Id { get; set; }
    }
}
