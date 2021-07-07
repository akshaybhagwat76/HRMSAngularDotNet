using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_UserTypeDto : BaseDto
    {
        [Required]
        public string UserType_Name{ get; set; }
    }
}
