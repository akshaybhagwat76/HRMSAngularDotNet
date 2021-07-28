using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using API.Errors;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class OtherInformationController : BaseApiController
    {

        #region Declarations
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        #endregion

        #region Constructor
        public OtherInformationController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Add new OtherInformation
        [HttpPost("AddOtherInformation")]
        public async Task<ActionResult<Sys_OtherInformationDto>> AddOtherInformationAsync(Sys_OtherInformationDto OtherInformationDto)
        {
            try
            {
                //Signature

                var signature = OtherInformationDto.SignatureFile;
                //Getting file meta data
                var SignatureFileName = Path.GetFileName(OtherInformationDto.SignatureFile.FileName);
                var contentType = OtherInformationDto.SignatureFile.ContentType;
                OtherInformationDto.Signature = SignatureFileName;
                var signaturefilePath = Path.Combine("~/Content/images/Signature/", SignatureFileName);
                OtherInformationDto.SignatureFile.CopyTo(new FileStream(signaturefilePath, FileMode.Create));

                //Picture
                var Picture = OtherInformationDto.PictureFile;
                //Getting file meta data
                var PictureFileName = Path.GetFileName(OtherInformationDto.PictureFile.FileName);
                var PictureFilecontentType = OtherInformationDto.PictureFile.ContentType;
                OtherInformationDto.Picture = PictureFileName;
                var picturefilePath = Path.Combine("~/Content/images/Picture/", SignatureFileName);
                OtherInformationDto.SignatureFile.CopyTo(new FileStream(picturefilePath, FileMode.Create));


                var otherInformation = _mapper.Map<Sys_OtherInformationDto, Sys_OtherInformation>(OtherInformationDto);
                _unitOfWork.Repository<Sys_OtherInformation>().Add(otherInformation);
                var result = await _unitOfWork.Complete();

                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating OtherInformation"));
                return _mapper.Map<Sys_OtherInformation, Sys_OtherInformationDto>(otherInformation);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
