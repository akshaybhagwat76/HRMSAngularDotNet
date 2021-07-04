using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_DISTRICTDto : BaseDto
    {
        [Required]
        public int State_Id { get; set; }
        [Required]
        public string District_Name { get; set; }
        [Required]
        public string District_Short_Code { get; set; }
        [Required]
        public string District_Code { get; set; }
    }
}
