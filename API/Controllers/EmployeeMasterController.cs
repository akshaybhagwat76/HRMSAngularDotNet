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
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class EmployeeMasterController : ControllerBase
    {

        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public EmployeeMasterController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion


        #region Add new employeemaster
        [HttpPost("AddEmployeeMaster")]
        public async Task<ActionResult<Sys_EmployeeMasterDto>> AddEducationAsync(Sys_EmployeeMasterDto EmployeeMasterDto)
        {
            try
            {
                var employeeMaster = _mapper.Map<Sys_EmployeeMasterDto, Sys_EmployeeMaster>(EmployeeMasterDto);
                _unitOfWork.Repository<Sys_EmployeeMaster>().Add(employeeMaster);
                var result = await _unitOfWork.Complete();

                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employeemaster"));
                else
                {
                    try
                    {
                        foreach (var item in EmployeeMasterDto.sys_FamilyDetailsDto)
                        {
                            item.Employee_Id = employeeMaster.Id;
                            await AddFamilyDetailsAsync(item);
                        }
                    }
                    catch (Exception) { }
                    try
                    {
                        foreach (var item in EmployeeMasterDto.sys_EducationalQualificationDto)
                        {
                            item.Employee_Id = employeeMaster.Id;
                            await AddEducationalQualificationAsync(item);
                        }
                    }
                    catch (Exception) { }
                    try
                    {
                        foreach (var item in EmployeeMasterDto.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto)
                        {
                            item.Employee_Id = employeeMaster.Id;
                            await AddNomineeAsync(item);
                        }
                    }
                    catch (Exception) { }

                    try
                    {
                        EmployeeMasterDto.sys_PermanentContactInformationDto.Employee_Id = employeeMaster.Id;
                        await AddPermanentContactInformationAsync(EmployeeMasterDto.sys_PermanentContactInformationDto);                     
                    }
                    catch (Exception) { }
                    try
                    {
                        EmployeeMasterDto.sys_PermanentContactInformationDto.Employee_Id = employeeMaster.Id;
                        await AddPermanentContactInformationAsync(EmployeeMasterDto.sys_PermanentContactInformationDto);
                    }
                    catch (Exception) { }
                    return _mapper.Map<Sys_EmployeeMaster, Sys_EmployeeMasterDto>(employeeMaster);
                }
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new employee
        [HttpPost("AddFamilyDetails")]
        public async Task<ActionResult<Sys_FamilyDetailsDto>> AddFamilyDetailsAsync(Sys_FamilyDetailsDto familyDetailsDto)
        {
            try
            {
                var familyDetails = _mapper.Map<Sys_FamilyDetailsDto, Sys_FamilyDetails>(familyDetailsDto);
                _unitOfWork.Repository<Sys_FamilyDetails>().Add(familyDetails);
                var result = await _unitOfWork.Complete();

                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employee"));
                return _mapper.Map<Sys_FamilyDetails, Sys_FamilyDetailsDto>(familyDetails);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new education
        [HttpPost("AddEducationalQualification")]
        public async Task<ActionResult<Sys_EducationalQualificationDto>> AddEducationalQualificationAsync(Sys_EducationalQualificationDto EducationQuilificationDto)
        {
            try
            {
                var educationQuilificationDto = _mapper.Map<Sys_EducationalQualificationDto, Sys_EducationalQualification>(EducationQuilificationDto);
                _unitOfWork.Repository<Sys_EducationalQualification>().Add(educationQuilificationDto);
                var result = await _unitOfWork.Complete();
                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating education quilification"));
                return _mapper.Map<Sys_EducationalQualification, Sys_EducationalQualificationDto>(educationQuilificationDto);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion


        #region Add new nominee

        [NonAction]
        public async Task<ActionResult<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>> AddNomineeAsync(TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto NomineeDto)
        {
            try
            {
                var employeeNonimee = _mapper.Map<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto, TBL_HR_EMPLOYEE_NOMINEE_DETAILS>(NomineeDto);
                _unitOfWork.Repository<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>().Add(employeeNonimee);
                var result = await _unitOfWork.Complete();

                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating Nominee"));
                return _mapper.Map<TBL_HR_EMPLOYEE_NOMINEE_DETAILS, TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>(employeeNonimee);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new Permanent Contact Informations
        [NonAction]
        public async Task<ActionResult<Sys_PermanentContactInformationDto>> AddPermanentContactInformationAsync(Sys_PermanentContactInformationDto familyDetailsDto)
        {
            try
            {
                var permanentContactInformation = _mapper.Map<Sys_PermanentContactInformationDto, Sys_PermanentContactInformation>(familyDetailsDto);
                _unitOfWork.Repository<Sys_PermanentContactInformation>().Add(permanentContactInformation);
                var result = await _unitOfWork.Complete();

                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employee"));
                return _mapper.Map<Sys_PermanentContactInformation, Sys_PermanentContactInformationDto>(permanentContactInformation);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new employee
        [NonAction]
        public async Task<ActionResult<Sys_CorresspondanceContactInformationDto>> AddPermanentContactInformationAsync(Sys_CorresspondanceContactInformationDto familyDetailsDto)
        {
            try
            {
                var corresspondanceContactInformation = _mapper.Map<Sys_CorresspondanceContactInformationDto, Sys_CorresspondanceContactInformation>(familyDetailsDto);
                _unitOfWork.Repository<Sys_CorresspondanceContactInformation>().Add(corresspondanceContactInformation);
                var result = await _unitOfWork.Complete();

                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employee"));
                return _mapper.Map<Sys_CorresspondanceContactInformation, Sys_CorresspondanceContactInformationDto>(corresspondanceContactInformation);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new OtherInformation
        [NonAction]
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


        #region Add new IdentityProof
        [NonAction]
        public async Task<ActionResult<Sys_Identity_ProofDto>> AddIdentityProofAsync(Sys_Identity_ProofDto identityProofDto)
        {
            try
            {
                var img = identityProofDto.Attachments;
                //Getting file meta data
                var fileName = Path.GetFileName(identityProofDto.Attachments.FileName);
                var contentType = identityProofDto.Attachments.ContentType;
                identityProofDto.Attachments_File_Name = fileName;
                var IdentityProoffilePath = Path.Combine("~/Content/images/IdentityProof/", fileName);
                identityProofDto.Attachments.CopyTo(new FileStream(IdentityProoffilePath, FileMode.Create));

                var identityProof = _mapper.Map<Sys_Identity_ProofDto, Sys_Identity_Proof>(identityProofDto);
                _unitOfWork.Repository<Sys_Identity_Proof>().Add(identityProof);
                var result = await _unitOfWork.Complete();

                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating IdentityProof"));
                return _mapper.Map<Sys_Identity_Proof, Sys_Identity_ProofDto>(identityProof);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
