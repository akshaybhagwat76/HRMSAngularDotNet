using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_REGION_ZONEDto : BaseDto
    {
        [Required]
        public int Country_Id { get; set; }
        [Required]
        public string Zone_Name { get; set; }
        [Required]
        public string Zone_Short_Code { get; set; }
        [Required]
        public string Zone_Code { get; set; }
    }
}
