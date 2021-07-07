using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_BloodGroupDto : BaseDto
    {
        [Required]
        public string BloodGroup_Name { get; set; }
    }
}
