using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_STATEDto : BaseDto
    {
        [Required]
        public int Zone_Id { get; set; }
        [Required]
        public string State_Name { get; set; }
        [Required]
        public string State_Short_Code { get; set; }
        [Required]
        public string State_Code { get; set; }
    }
}
