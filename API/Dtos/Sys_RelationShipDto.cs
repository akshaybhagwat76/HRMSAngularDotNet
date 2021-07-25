using System.ComponentModel.DataAnnotations;
namespace API.Dtos
{
    public class Sys_RelationShipDto : BaseDto
    {
        [Required]
        public string RelationShip_Name { get; set; }
    }
}
