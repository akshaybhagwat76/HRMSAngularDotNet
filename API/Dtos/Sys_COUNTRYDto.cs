using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_COUNTRYDto : BaseDto
    {
        [Required]
        public string Country_Name { get; set; }
        [Required]
        public string Country_Short_Code { get; set; }
        [Required]
        public string Country_Code { get; set; }
    }
}
