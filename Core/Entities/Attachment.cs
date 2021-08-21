using System.ComponentModel.DataAnnotations.Schema;

namespace Core.Entities
{
    [Table("sys_Attachments")]
    public class Attachment: BaseEntity
    {
        public string AttachmentUrl { get; set; }
        public string FileName { get; set; }
        public int EmployeeId { get; set; }
    }
}
