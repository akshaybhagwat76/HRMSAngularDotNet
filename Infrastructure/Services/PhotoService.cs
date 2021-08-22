//using Core.Entities;
//using Core.Interfaces;
//using Microsoft.AspNetCore.Http;
//using System;
//using System.IO;
//using System.Threading.Tasks;

//namespace Infrastructure.Services
//{
//    public class PhotoService : IPhotoService
//    {
//        public async Task<Attachment> SaveToDiskAsync(IFormFile file, int employeeId)
//        {
//            var attachment = new Attachment();
//            if (file.Length > 0)
//            {
//                var fileName = Guid.NewGuid() + Path.GetExtension(file.FileName);
//                var filePath = Path.Combine("Content/attachments", fileName);
//                await using var fileStream = new FileStream(filePath, FileMode.Create);
//                await file.CopyToAsync(fileStream);

//                attachment.FileName = fileName;
//                attachment.AttachmentUrl = "attachments/" + employeeId + "/" + fileName;
//                return attachment;
//            }
//            return null;
//        }
//        public void DeleteFromDisk(Attachment attachment)
//        {
//            if (File.Exists(Path.Combine("Content/attachments", attachment.FileName)))
//                File.Delete("Content/attachments" + attachment.FileName);
//        }


//    }
//}
