using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_CastDto:BaseDto
    {
        [Required]
        public string Cast_Name { get; set; }
    }
}
