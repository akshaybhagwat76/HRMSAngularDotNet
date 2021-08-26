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
using Microsoft.AspNetCore.Mvc;
using API.Helpers;
using Infrastructure.Data;
using Microsoft.Extensions.Configuration;
using Microsoft.Data.SqlClient;
using System.Data;
using Microsoft.EntityFrameworkCore;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class EmployeeMasterController : ControllerBase
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        readonly IConfiguration _configuration;
        private readonly StoreContext _storeContext;

        public SqlConnection cn = null;
        #endregion

        #region Constructor
        public EmployeeMasterController(IUnitOfWork unitOfWork, IMapper mapper, IConfiguration configuration, StoreContext storeContext)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _configuration = configuration;
            _storeContext = storeContext;
            cn = new SqlConnection(_configuration.GetValue<string>("ConnectionStrings:FreelencerDB"));
        }
        #endregion

        #region Add new or update employeemaster
        [HttpPost("AddOrUpdateEmployeeMaster")]
        public async Task<ActionResult<Sys_EmployeeMasterDto>> AddOrUpdateEmployeeMaster(Sys_EmployeeMasterDto EmployeeMasterDto)
        {
            SqlTransaction tr = null;
            await cn.OpenAsync();
            tr = cn.BeginTransaction();
            try
            {
                int result = 0;
                Sys_EmployeeMaster employeeMaster = new Sys_EmployeeMaster();
                if (EmployeeMasterDto.Id == 0)
                {
                    employeeMaster = _mapper.Map<Sys_EmployeeMasterDto, Sys_EmployeeMaster>(EmployeeMasterDto);
                    employeeMaster.Status = true;
                    _unitOfWork.Repository<Sys_EmployeeMaster>().Add(employeeMaster);
                    result = await _unitOfWork.Complete();
                }
                else
                {
                    employeeMaster = await _unitOfWork.Repository<Sys_EmployeeMaster>().GetByIdAsync(EmployeeMasterDto.Id);
                    _unitOfWork.Repository<Sys_EmployeeMaster>().Update(employeeMaster);
                }
                if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employeemaster"));
                else
                {
                    try
                    {
                        if (EmployeeMasterDto.sys_FamilyDetailsDto != null && EmployeeMasterDto.sys_FamilyDetailsDto.Count > 0)
                        {
                            foreach (var item in EmployeeMasterDto.sys_FamilyDetailsDto)
                            {
                                item.Employee_Id = employeeMaster.Id;
                                await AddFamilyDetailsAsync(item);
                            }
                        }
                    }
                    catch (Exception) { }
                    try
                    {
                        if (EmployeeMasterDto.sys_ProfessionalInformations != null && EmployeeMasterDto.sys_ProfessionalInformations.Count > 0)
                        {
                            foreach (var item in EmployeeMasterDto.sys_ProfessionalInformations)
                            {
                                item.Employee_Id = employeeMaster.Id;
                                await AddProfessionalInformationAsync(item);
                            }
                        }
                    }
                    catch (Exception) { }
                    try
                    {
                        if (EmployeeMasterDto.sys_EducationalQualificationDto != null && EmployeeMasterDto.sys_EducationalQualificationDto.Count > 0)
                        {
                            foreach (var item in EmployeeMasterDto.sys_EducationalQualificationDto)
                            {
                                item.Employee_Id = employeeMaster.Id;
                                await AddEducationalQualificationAsync(item);
                            }
                        }
                    }
                    catch (Exception) { }
                    try
                    {
                        if (EmployeeMasterDto.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto != null && EmployeeMasterDto.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.Count > 0)
                        {
                            foreach (var item in EmployeeMasterDto.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto)
                            {
                                item.Employee_Id = employeeMaster.Id;
                                await AddNomineeAsync(item);
                            }
                        }
                    }
                    catch (Exception) { }

                    try
                    {
                        if (EmployeeMasterDto.sys_PermanentContactInformationDto != null)
                        {
                            EmployeeMasterDto.sys_PermanentContactInformationDto.Employee_Id = employeeMaster.Id;
                            await AddPermanentContactInformationAsync(EmployeeMasterDto.sys_PermanentContactInformationDto);
                        }
                    }
                    catch (Exception) { }

                    try
                    {
                        if (EmployeeMasterDto.sys_OtherInformationDto != null)
                        {
                            EmployeeMasterDto.sys_OtherInformationDto.Employee_Id = employeeMaster.Id;
                            await AddOtherInformationAsync(EmployeeMasterDto.sys_OtherInformationDto);
                        }
                    }
                    catch (Exception) { }
                    await tr.CommitAsync();
                    return _mapper.Map<Sys_EmployeeMaster, Sys_EmployeeMasterDto>(employeeMaster);
                }
            }
            catch (Exception exception)
            {
                await tr.RollbackAsync();
                return BadRequest(exception.Message.ToString());
            }
            finally
            {
                if (cn != null)
                    await cn.DisposeAsync();
                if (tr != null)
                    await tr.DisposeAsync();
            }
        }
        #endregion

        #region Get methods
        [HttpPost("SearchEmployee")]
        public async Task<ActionResult<List<Sys_EmployeeMasterDto>>> GetEmployees(EmployeeSearchDTO employeeSearchDTO)
        {
            try
            {
                List<Sys_EmployeeMasterDto> sys_EmployeeMasterDtos = new List<Sys_EmployeeMasterDto>();
                var tbl_Employees = await _unitOfWork.Repository<Sys_EmployeeMaster>().ListAllAsync();

                if (tbl_Employees.Count > 0 && employeeSearchDTO != null)
                {
                    tbl_Employees = tbl_Employees.Where(x => x.Status).ToList();
                    tbl_Employees.WhereIf(employeeSearchDTO.CompanyId > 0, x => x.CompanyId == employeeSearchDTO.CompanyId)
                                 .WhereIf(employeeSearchDTO.DepartmentId > 0, x => x.DepartmentId == employeeSearchDTO.DepartmentId)
                                 .WhereIf(employeeSearchDTO.Project_BranchId > 0, x => x.Project_BranchId == employeeSearchDTO.Project_BranchId)
                                 .WhereIf(employeeSearchDTO.DesignationId > 0, x => x.DesignationId == employeeSearchDTO.DesignationId)
                                 .WhereIf(!string.IsNullOrEmpty(employeeSearchDTO.EmployeeCode), x => x.EmployeeCode == employeeSearchDTO.EmployeeCode)
                                 .WhereIf(!string.IsNullOrEmpty(employeeSearchDTO.FirstName), x => x.FirstName == employeeSearchDTO.FirstName)
                                 .WhereIf(!string.IsNullOrEmpty(employeeSearchDTO.email), x => x.email == employeeSearchDTO.email).ToList();

                    if (employeeSearchDTO.ZoneId > 0)
                    {
                        var hR_Employees = await _unitOfWork.Repository<Sys_CorresspondanceContactInformation>().ListAllAsync();
                        var permanentContactInformation = await _unitOfWork.Repository<Sys_PermanentContactInformation>().ListAllAsync();

                        if (hR_Employees != null && hR_Employees.Count > 0)
                        {
                            var CorresspondanceContactInformation = hR_Employees.Where(x => x.Zone == employeeSearchDTO.ZoneId).ToList();

                            if (hR_Employees != null && hR_Employees.Count > 0)
                            {
                                foreach (Sys_EmployeeMaster item in tbl_Employees)
                                {
                                    if (item.Id > 0)
                                    {
                                        CorresspondanceContactInformation = CorresspondanceContactInformation.Where(x => x.Employee_Id == item.Id).ToList();
                                    }
                                }
                            }
                            foreach (var item in CorresspondanceContactInformation)
                            {
                                tbl_Employees = tbl_Employees.Where(x => x.Id == item.Employee_Id).ToList();
                            }
                        }
                        if (permanentContactInformation != null && permanentContactInformation.Count > 0)
                        {
                            var LstpermanentContactInformation = permanentContactInformation.Where(x => x.Zone == employeeSearchDTO.ZoneId).ToList();

                            if (permanentContactInformation != null && permanentContactInformation.Count > 0)
                            {
                                foreach (Sys_EmployeeMaster item in tbl_Employees)
                                {
                                    if (item.Id > 0)
                                    {
                                        LstpermanentContactInformation = LstpermanentContactInformation.Where(x => x.Employee_Id == item.Id).ToList();
                                    }
                                }
                            }
                            foreach (var item in LstpermanentContactInformation)
                            {
                                tbl_Employees = tbl_Employees.Where(x => x.Id == item.Employee_Id).ToList();
                            }
                        }
                    }
                }

                return Ok(tbl_Employees);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }

        [HttpGet]
        public async Task<ActionResult> DeleteEmployee(int employeeId)
        {
            if (employeeId > 0)
            {
                Sys_EmployeeMaster sys_EmployeeMaster = await _storeContext.Sys_EmployeeMaster.FindAsync(employeeId);
                sys_EmployeeMaster.Status = false;
                return Ok(await _storeContext.SaveChangesAsync());
            }
            else { return BadRequest(); }
        }

        [HttpGet]
        public async Task<ActionResult<Sys_EmployeeMasterDto>> GetEmployee(int employeeId)
        {
            Sys_EmployeeMasterDto sys_EmployeeMaster = new Sys_EmployeeMasterDto();
            try
            {

                sys_EmployeeMaster = _mapper.Map<Sys_EmployeeMaster, Sys_EmployeeMasterDto>(await _storeContext.Sys_EmployeeMaster.Where(x => x.Id == employeeId && x.Status).FirstOrDefaultAsync());
                var familyDetail = await _storeContext.Sys_FamilyDetails.Where(x => x.Employee_Id == employeeId).ToListAsync();

                sys_EmployeeMaster.sys_FamilyDetailsDto = _mapper.Map<List<Sys_FamilyDetails>, List<Sys_FamilyDetailsDto>>(familyDetail);

                var nomineeDetails = await _storeContext.TBL_HR_EMPLOYEE_NOMINEE_DETAILS.Where(x => x.Employee_Id == employeeId).ToListAsync();
                sys_EmployeeMaster.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto = _mapper.Map<List<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>, List<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>>(nomineeDetails);

                var educationalQualifications = await _storeContext.HR_EMPLOYEE_EDUCATION_DETAILs.Where(x => x.Employee_Id == employeeId).ToListAsync();
                sys_EmployeeMaster.sys_EducationalQualificationDto = _mapper.Map<List<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>, List<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>>(educationalQualifications);

                if (sys_EmployeeMaster.sys_EducationalQualificationDto != null && sys_EmployeeMaster.sys_EducationalQualificationDto.Count > 0)
                {
                    foreach (TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto TBL_HR_EMPLOYEE_EDUCATION_DETAIL in sys_EmployeeMaster.sys_EducationalQualificationDto)
                    {
                        TBL_Educational_Qualification_Attachements tBL_Educational_Qualification_Attachement = _storeContext.TBL_Educational_Qualification_Attachements.Where(x => x.EmployeeId == employeeId && x.Educational_Qualification_Id == TBL_HR_EMPLOYEE_EDUCATION_DETAIL.Id).FirstOrDefault();
                        if (tBL_Educational_Qualification_Attachement != null && !string.IsNullOrEmpty(tBL_Educational_Qualification_Attachement.DocumentUrl))
                        {
                            TBL_HR_EMPLOYEE_EDUCATION_DETAIL.Attachments = tBL_Educational_Qualification_Attachement.DocumentUrl;
                        }
                    }
                }


                var permanentContactInformation = await _storeContext.Sys_PermanentContactInformation.Where(x => x.Employee_Id == employeeId).FirstOrDefaultAsync();
                sys_EmployeeMaster.sys_PermanentContactInformationDto = _mapper.Map<Sys_PermanentContactInformation, Sys_PermanentContactInformationDto>(permanentContactInformation);

                var corresspondanceContactInformation = await _storeContext.Sys_CorresspondanceContactInformation.Where(x => x.Employee_Id == employeeId).FirstOrDefaultAsync();
                sys_EmployeeMaster.sys_CorresspondanceContactInformationDto = _mapper.Map<Sys_CorresspondanceContactInformation, Sys_CorresspondanceContactInformationDto>(corresspondanceContactInformation);


                var professionalInformation = await _storeContext.Sys_ProfessionalInformation.Where(x => x.Employee_Id == employeeId).ToListAsync();
                sys_EmployeeMaster.sys_ProfessionalInformations = _mapper.Map<List<Sys_ProfessionalInformation>, List<Sys_ProfessionalInformationDto>>(professionalInformation);

                if (sys_EmployeeMaster.sys_ProfessionalInformations != null && sys_EmployeeMaster.sys_ProfessionalInformations.Count > 0)
                {
                    foreach (Sys_ProfessionalInformationDto Sys_ProfessionalInformation in sys_EmployeeMaster.sys_ProfessionalInformations)
                    {
                        TBL_Professional_Information_Attachements TBL_Professional_Information_Attachement = _storeContext.TBL_Professional_Information_Attachements.Where(x => x.EmployeeId == employeeId && x.Professional_Information_Id == Sys_ProfessionalInformation.Id).FirstOrDefault();
                        if (TBL_Professional_Information_Attachement != null && !string.IsNullOrEmpty(TBL_Professional_Information_Attachement.DocumentUrl))
                        {
                            Sys_ProfessionalInformation.AttachmentType_Path = TBL_Professional_Information_Attachement.DocumentUrl;
                        }
                    }
                }
                var OtherInformation = await _storeContext.Sys_OtherInformation.Where(x => x.Employee_Id == employeeId).FirstOrDefaultAsync();
                sys_EmployeeMaster.sys_OtherInformationDto = _mapper.Map<Sys_OtherInformation, Sys_OtherInformationDto>(OtherInformation);
                if (sys_EmployeeMaster.sys_OtherInformationDto != null && sys_EmployeeMaster.sys_OtherInformationDto.Id > 0 && sys_EmployeeMaster.sys_OtherInformationDto.sys_Identity_Proofs != null && sys_EmployeeMaster.sys_OtherInformationDto.sys_Identity_Proofs.Count > 0)
                {
                    foreach (Sys_ProfessionalInformationDto Sys_ProfessionalInformation in sys_EmployeeMaster.sys_ProfessionalInformations)
                    {
                        TBL_Professional_Information_Attachements TBL_Professional_Information_Attachement = _storeContext.TBL_Professional_Information_Attachements.Where(x => x.EmployeeId == employeeId && x.Professional_Information_Id == Sys_ProfessionalInformation.Id).FirstOrDefault();
                        if (TBL_Professional_Information_Attachement != null && !string.IsNullOrEmpty(TBL_Professional_Information_Attachement.DocumentUrl))
                        {
                            Sys_ProfessionalInformation.AttachmentType_Path = TBL_Professional_Information_Attachement.DocumentUrl;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return Ok(sys_EmployeeMaster);
        }

        #endregion

        #region Add new employee
        [NonAction]
        public async Task<ActionResult<Sys_FamilyDetailsDto>> AddFamilyDetailsAsync(Sys_FamilyDetailsDto familyDetailsDto)
        {
            try
            {
                if (familyDetailsDto == null)
                {
                    return new Sys_FamilyDetailsDto();
                }
                if (familyDetailsDto.Id == 0)
                {
                    var familyDetails = _mapper.Map<Sys_FamilyDetailsDto, Sys_FamilyDetails>(familyDetailsDto);
                    _unitOfWork.Repository<Sys_FamilyDetails>().Add(familyDetails);
                    var result = await _unitOfWork.Complete();

                    if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employee"));
                    return _mapper.Map<Sys_FamilyDetails, Sys_FamilyDetailsDto>(familyDetails);
                }
                else
                {
                    Sys_FamilyDetails familyDetail = await _unitOfWork.Repository<Sys_FamilyDetails>().GetByIdAsync(familyDetailsDto.Id);
                    _unitOfWork.Repository<Sys_FamilyDetails>().Update(familyDetail);
                    return _mapper.Map<Sys_FamilyDetails, Sys_FamilyDetailsDto>(familyDetail);
                }
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new education
        [NonAction]
        public async Task<ActionResult<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>> AddEducationalQualificationAsync(TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto EducationQuilificationDto)
        {
            try
            {
                if (EducationQuilificationDto == null)
                {
                    return new TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto();
                }
                if (EducationQuilificationDto.Id == 0)
                {
                    var educationQuilificationDto = _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto, TBL_HR_EMPLOYEE_EDUCATION_DETAILS>(EducationQuilificationDto);

                    _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().Add(educationQuilificationDto);
                    var result = await _unitOfWork.Complete();
                    if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating education quilification"));
                    int EducationQuilificationId = GetLastRecordFromTable(Messages.tBL_HR_EMPLOYEE_EDUCATION_DETAILs);

                    if (!string.IsNullOrEmpty(EducationQuilificationDto.Attachments) && EducationQuilificationDto.Attachments.Length > 1000)
                    {
                        string docUrl = UploadFile(EducationQuilificationDto.Attachments, EducationQuilificationDto.Employee_Id);
                        TBL_Educational_Qualification_AttachementsDto Educational_Qualification_AttachementsDto = new TBL_Educational_Qualification_AttachementsDto() { EmployeeId = EducationQuilificationDto.Employee_Id, DocumentType = educationQuilificationDto.Qualification, Educational_Qualification_Id = EducationQuilificationId, DocumentUrl = docUrl };
                        var Educational_Qualification_Attachement = _mapper.Map<TBL_Educational_Qualification_AttachementsDto, TBL_Educational_Qualification_Attachements>(Educational_Qualification_AttachementsDto);
                        _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().Add(Educational_Qualification_Attachement);
                        var resultEducational_Qualification_Attachement = await _unitOfWork.Complete();
                    }
                    return _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILS, TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>(educationQuilificationDto);
                }
                else
                {
                    TBL_HR_EMPLOYEE_EDUCATION_DETAILS educationQuilificationDto = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().GetByIdAsync(EducationQuilificationDto.Id);
                    _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().Update(educationQuilificationDto);

                    if (!string.IsNullOrEmpty(EducationQuilificationDto.Attachments) && EducationQuilificationDto.Attachments.Length > 1000)
                    {
                        string docUrl = UploadFile(EducationQuilificationDto.Attachments, EducationQuilificationDto.Employee_Id);
                        TBL_Educational_Qualification_AttachementsDto Educational_Qualification_AttachementsDto = new TBL_Educational_Qualification_AttachementsDto() { EmployeeId = EducationQuilificationDto.Employee_Id, DocumentType = educationQuilificationDto.Qualification, Educational_Qualification_Id = educationQuilificationDto.Id, DocumentUrl = docUrl };
                        var Educational_Qualification_Attachement = _mapper.Map<TBL_Educational_Qualification_AttachementsDto, TBL_Educational_Qualification_Attachements>(Educational_Qualification_AttachementsDto);
                        _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().Add(Educational_Qualification_Attachement);
                        var resultEducational_Qualification_Attachement = await _unitOfWork.Complete();
                    }
                    else
                    {
                        var lstEducational_Qualification_Attachements = await _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().ListAllAsync();
                        lstEducational_Qualification_Attachements = lstEducational_Qualification_Attachements.Where(x => x.Educational_Qualification_Id == educationQuilificationDto.Id).ToList();
                        if (lstEducational_Qualification_Attachements != null && lstEducational_Qualification_Attachements.Count > 0)
                        {
                            foreach (TBL_Educational_Qualification_Attachements Educational_Qualification_Attachement in lstEducational_Qualification_Attachements)
                            {
                                if (Educational_Qualification_Attachement != null && !string.IsNullOrEmpty(Educational_Qualification_Attachement.DocumentUrl) && string.IsNullOrEmpty(EducationQuilificationDto.Attachments))
                                {
                                    if (RemoveFile(Educational_Qualification_Attachement.DocumentUrl, educationQuilificationDto.Employee_Id))
                                    {
                                        _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().Delete(Educational_Qualification_Attachement);
                                        var resultEducational_Qualification_Attachement = await _unitOfWork.Complete();
                                        if (resultEducational_Qualification_Attachement <= 0) return BadRequest(new ApiResponse(400, "Problem deleting Educational_Qualification_Attachement"));
                                    }
                                }
                            }
                        }
                    }

                    return _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILS, TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>(educationQuilificationDto);
                }
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new professional information
        [NonAction]
        public async Task<ActionResult<Sys_ProfessionalInformationDto>> AddProfessionalInformationAsync(Sys_ProfessionalInformationDto ProfessionalInformationDto)
        {
            try
            {
                if (ProfessionalInformationDto == null)
                {
                    return new Sys_ProfessionalInformationDto();
                }
                if (ProfessionalInformationDto.Id == 0)
                {
                    var professionalInformationDto = _mapper.Map<Sys_ProfessionalInformationDto, Sys_ProfessionalInformation>(ProfessionalInformationDto);

                    _unitOfWork.Repository<Sys_ProfessionalInformation>().Add(professionalInformationDto);
                    var result = await _unitOfWork.Complete();
                    int ProfessionalInformationId = GetLastRecordFromTable(Messages.tbl_ProfessionalInformation);

                    if (!string.IsNullOrEmpty(ProfessionalInformationDto.AttachmentType_Path) && ProfessionalInformationDto.AttachmentType_Path.Length > 1000)
                    {
                        string docUrl = UploadFile(ProfessionalInformationDto.AttachmentType_Path, ProfessionalInformationDto.Employee_Id);
                        TBL_Professional_Information_AttachementsDto Professional_Information_AttachementsDto = new TBL_Professional_Information_AttachementsDto() { EmployeeId = ProfessionalInformationDto.Employee_Id, DocumentType = ProfessionalInformationDto.EmployeerName, Professional_Information_Attachements_Id = ProfessionalInformationId, DocumentUrl = docUrl };
                        var ProfessionalInformation_Attachement = _mapper.Map<TBL_Professional_Information_AttachementsDto, TBL_Professional_Information_Attachements>(Professional_Information_AttachementsDto);
                        _unitOfWork.Repository<TBL_Professional_Information_Attachements>().Add(ProfessionalInformation_Attachement);
                        var resultEducational_Qualification_Attachement = await _unitOfWork.Complete();
                    }
                    return _mapper.Map<Sys_ProfessionalInformation, Sys_ProfessionalInformationDto>(professionalInformationDto);
                }
                else
                {
                    Sys_ProfessionalInformation professionalInformationDto = await _unitOfWork.Repository<Sys_ProfessionalInformation>().GetByIdAsync(ProfessionalInformationDto.Id);
                    _unitOfWork.Repository<Sys_ProfessionalInformation>().Update(professionalInformationDto);

                    if (!string.IsNullOrEmpty(ProfessionalInformationDto.AttachmentType_Path) && ProfessionalInformationDto.AttachmentType_Path.Length > 1000)
                    {
                        string docUrl = UploadFile(ProfessionalInformationDto.AttachmentType_Path, ProfessionalInformationDto.Employee_Id);
                        TBL_Professional_Information_AttachementsDto Professional_Information_AttachementsDto = new TBL_Professional_Information_AttachementsDto() { EmployeeId = ProfessionalInformationDto.Employee_Id, DocumentType = ProfessionalInformationDto.EmployeerName, Professional_Information_Attachements_Id = professionalInformationDto.Id, DocumentUrl = docUrl };
                        var Professional_Information_Attachement = _mapper.Map<TBL_Professional_Information_AttachementsDto, TBL_Professional_Information_Attachements>(Professional_Information_AttachementsDto);
                        _unitOfWork.Repository<TBL_Professional_Information_Attachements>().Add(Professional_Information_Attachement);
                        var resultProfessional_Information_Attachement = await _unitOfWork.Complete();
                    }
                    else
                    {
                        var lstProfessional_Information_Attachements = await _unitOfWork.Repository<TBL_Professional_Information_Attachements>().ListAllAsync();
                        lstProfessional_Information_Attachements = lstProfessional_Information_Attachements.Where(x => x.Professional_Information_Id == professionalInformationDto.Id).ToList();
                        if (lstProfessional_Information_Attachements != null && lstProfessional_Information_Attachements.Count > 0)
                        {
                            foreach (TBL_Professional_Information_Attachements Professional_Information_Attachements in lstProfessional_Information_Attachements)
                            {
                                if (Professional_Information_Attachements != null && !string.IsNullOrEmpty(Professional_Information_Attachements.DocumentUrl) && string.IsNullOrEmpty(ProfessionalInformationDto.AttachmentType_Path))
                                {
                                    if (RemoveFile(Professional_Information_Attachements.DocumentUrl, professionalInformationDto.Employee_Id))
                                    {
                                        _unitOfWork.Repository<TBL_Professional_Information_Attachements>().Delete(Professional_Information_Attachements);
                                        var resultProfessional_Information_Attachement = await _unitOfWork.Complete();
                                        if (resultProfessional_Information_Attachement <= 0) return BadRequest(new ApiResponse(400, "Problem deleting Professional_Information_Attachement"));
                                    }
                                }
                            }
                        }
                    }


                    return _mapper.Map<Sys_ProfessionalInformation, Sys_ProfessionalInformationDto>(professionalInformationDto);
                }
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
                if (NomineeDto != null)
                {
                    if (NomineeDto.Id == 0)
                    {
                        var employeeNonimee = _mapper.Map<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto, TBL_HR_EMPLOYEE_NOMINEE_DETAILS>(NomineeDto);
                        _unitOfWork.Repository<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>().Add(employeeNonimee);
                        var result = await _unitOfWork.Complete();

                        if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating Nominee"));
                        return _mapper.Map<TBL_HR_EMPLOYEE_NOMINEE_DETAILS, TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>(employeeNonimee);
                    }
                    else
                    {
                        TBL_HR_EMPLOYEE_NOMINEE_DETAILS employeeNonimee = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>().GetByIdAsync(NomineeDto.Id);
                        _unitOfWork.Repository<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>().Update(employeeNonimee);
                        return _mapper.Map<TBL_HR_EMPLOYEE_NOMINEE_DETAILS, TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>(employeeNonimee);
                    }
                }
                else
                {
                    return new TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto();
                }
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new Permanent Contact Informations
        [NonAction]
        public async Task<ActionResult<Sys_PermanentContactInformationDto>> AddPermanentContactInformationAsync(Sys_PermanentContactInformationDto permanentContactInformationDto)
        {
            try
            {
                if (permanentContactInformationDto == null)
                {
                    return new Sys_PermanentContactInformationDto();
                }
                if (permanentContactInformationDto.Id == 0)
                {
                    var permanentContactInformation = _mapper.Map<Sys_PermanentContactInformationDto, Sys_PermanentContactInformation>(permanentContactInformationDto);
                    _unitOfWork.Repository<Sys_PermanentContactInformation>().Add(permanentContactInformation);
                    var result = await _unitOfWork.Complete();

                    if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employee"));
                    return _mapper.Map<Sys_PermanentContactInformation, Sys_PermanentContactInformationDto>(permanentContactInformation);
                }
                else
                {
                    Sys_PermanentContactInformation permanentContactInformation = await _unitOfWork.Repository<Sys_PermanentContactInformation>().GetByIdAsync(permanentContactInformationDto.Id);
                    _unitOfWork.Repository<Sys_PermanentContactInformation>().Update(permanentContactInformation);
                    return _mapper.Map<Sys_PermanentContactInformation, Sys_PermanentContactInformationDto>(permanentContactInformation);
                }
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion

        #region Add new employee
        [NonAction]
        public async Task<ActionResult<Sys_CorresspondanceContactInformationDto>> AddCorresspondanceContactInformationAsync(Sys_CorresspondanceContactInformationDto familyDetailsDto)
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
                if (OtherInformationDto == null)
                {
                    return new Sys_OtherInformationDto();
                }
                if (OtherInformationDto.Id == 0)
                {
                    var otherInformation = _mapper.Map<Sys_OtherInformationDto, Sys_OtherInformation>(OtherInformationDto);
                    _unitOfWork.Repository<Sys_OtherInformation>().Add(otherInformation);
                    var result = await _unitOfWork.Complete();
                    if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating OtherInformation"));

                    int otherInformationId = GetLastRecordFromTable(Messages.tbl_OtherInformation);

                    if (OtherInformationDto.sys_Identity_Proofs != null && OtherInformationDto.sys_Identity_Proofs.Count > 0)
                    {
                        foreach (Sys_Identity_ProofDto Sys_Identity_Proof in OtherInformationDto.sys_Identity_Proofs)
                        {
                            Sys_Identity_Proof.OtherInformationId = otherInformationId;
                            var Identity_Proof = _mapper.Map<Sys_Identity_ProofDto, Sys_Identity_Proof>(Sys_Identity_Proof);
                            _unitOfWork.Repository<Sys_Identity_Proof>().Add(Identity_Proof);
                            var resultIdentity_Proof = await _unitOfWork.Complete();
                            if (resultIdentity_Proof <= 0) { return BadRequest(new ApiResponse(400, "Problem creating OtherInformation")); }
                            else
                            {
                                int identityProofId = GetLastRecordFromTable(Messages.tBL_HR_EMPLOYEE_IDENTITYPROOF_DETAILs);
                                if (!string.IsNullOrEmpty(Sys_Identity_Proof.Attachments) && Sys_Identity_Proof.Attachments.Length > 1000)
                                {
                                    string docUrl = UploadFile(Sys_Identity_Proof.Attachments, otherInformation.Employee_Id);
                                    TBL_Identity_Proof_AttachementsDto Identity_ProofAttachementDto = new TBL_Identity_Proof_AttachementsDto() { EmployeeId = otherInformation.Employee_Id, DocumentType = Identity_Proof.Identity_Type, Identity_Proof_Id = identityProofId, DocumentUrl = docUrl };
                                    var Identity_ProofAttachement = _mapper.Map<TBL_Identity_Proof_AttachementsDto, TBL_Identity_Proof_Attachements>(Identity_ProofAttachementDto);
                                    _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().Add(Identity_ProofAttachement);
                                    var resultIdentity_ProofAttachement = await _unitOfWork.Complete();
                                }

                            };
                        }
                    }
                }
                else
                {
                    Sys_OtherInformation OtherInformation = await _unitOfWork.Repository<Sys_OtherInformation>().GetByIdAsync(OtherInformationDto.Id);
                    _unitOfWork.Repository<Sys_OtherInformation>().Update(OtherInformation);
                    if (OtherInformationDto.sys_Identity_Proofs != null && OtherInformationDto.sys_Identity_Proofs.Count > 0)
                    {
                        foreach (Sys_Identity_ProofDto Sys_Identity_Proof in OtherInformationDto.sys_Identity_Proofs)
                        {
                            if (Sys_Identity_Proof.Id == 0 && !string.IsNullOrEmpty(Sys_Identity_Proof.Attachments) && Sys_Identity_Proof.Attachments.Length > 1000)
                            {
                                Sys_Identity_Proof.OtherInformationId = OtherInformation.Id;
                                var Identity_Proof = _mapper.Map<Sys_Identity_ProofDto, Sys_Identity_Proof>(Sys_Identity_Proof);
                                _unitOfWork.Repository<Sys_Identity_Proof>().Add(Identity_Proof);
                                var resultIdentity_Proof = await _unitOfWork.Complete();
                                if (resultIdentity_Proof <= 0) return BadRequest(new ApiResponse(400, "Problem creating OtherInformation"));
                            }
                            else
                            {
                                Sys_Identity_Proof Identity_Proof = await _unitOfWork.Repository<Sys_Identity_Proof>().GetByIdAsync(Sys_Identity_Proof.Id);
                                if (!string.IsNullOrEmpty(Sys_Identity_Proof.Attachments) && Sys_Identity_Proof.Attachments.Length > 1000)
                                {
                                    string docUrl = UploadFile(Sys_Identity_Proof.Attachments, OtherInformation.Employee_Id);
                                    TBL_Identity_Proof_AttachementsDto Identity_ProofAttachementDto = new TBL_Identity_Proof_AttachementsDto() { EmployeeId = OtherInformation.Employee_Id, DocumentType = Identity_Proof.Identity_Type, Identity_Proof_Id = Sys_Identity_Proof.Id, DocumentUrl = docUrl };
                                    var Identity_ProofAttachement = _mapper.Map<TBL_Identity_Proof_AttachementsDto, TBL_Identity_Proof_Attachements>(Identity_ProofAttachementDto);
                                    _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().Add(Identity_ProofAttachement);
                                    var resultIdentity_ProofAttachement = await _unitOfWork.Complete();

                                    _unitOfWork.Repository<Sys_Identity_Proof>().Update(Identity_Proof);
                                }
                                else
                                {
                                    var lstTBL_Identity_Proof_Attachements = await _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().ListAllAsync();
                                    lstTBL_Identity_Proof_Attachements = lstTBL_Identity_Proof_Attachements.Where(x => x.Identity_Proof_Id == Identity_Proof.Id).ToList();
                                    if (lstTBL_Identity_Proof_Attachements != null && lstTBL_Identity_Proof_Attachements.Count > 0)
                                    {
                                        foreach (TBL_Identity_Proof_Attachements Identity_Proof_Attachements in lstTBL_Identity_Proof_Attachements)
                                        {
                                            if (Identity_Proof_Attachements != null && !string.IsNullOrEmpty(Identity_Proof_Attachements.DocumentUrl) && string.IsNullOrEmpty(Sys_Identity_Proof.Attachments))
                                            {
                                                if (RemoveFile(Identity_Proof_Attachements.DocumentUrl, OtherInformation.Employee_Id))
                                                {
                                                    _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().Delete(Identity_Proof_Attachements);
                                                    var resultIdentity_Proof_Attachements = await _unitOfWork.Complete();
                                                    if (resultIdentity_Proof_Attachements <= 0) return BadRequest(new ApiResponse(400, "Problem deleting Identity_Proof_Attachements"));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return _mapper.Map<Sys_OtherInformation, Sys_OtherInformationDto>(OtherInformation);
                }

                return new Sys_OtherInformationDto();

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
                //var fileName = Path.GetFileName(identityProofDto.Attachments.FileName);
                //var contentType = identityProofDto.Attachments.ContentType;
                //identityProofDto.Attachments_File_Name = fileName;
                //var IdentityProoffilePath = Path.Combine("~/Content/images/IdentityProof/", fileName);
                //identityProofDto.Attachments.CopyTo(new FileStream(IdentityProoffilePath, FileMode.Create));

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

        #region Delete Employee Master


        #endregion

        #region Get last record from table
        [NonAction]
        public int GetLastRecordFromTable(string tableName)
        {
            int letestInformationId = 0;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cn.Open();
            SqlCommand command = new SqlCommand($"select top 1 Id from {tableName} order by Id desc", cn);
            if (!string.IsNullOrEmpty(command.ExecuteScalar().ToString()))
            {
                letestInformationId = Convert.ToInt32(command.ExecuteScalar());
            }
            return letestInformationId;
        }
        #endregion

        #region Files methods

        [NonAction]
        public bool RemoveFile(string fileName, int employeeId)
        {
            bool isExist = false;
            String dirPath = Path.GetFullPath(Messages.wwwroot) + Messages.assethr + employeeId.ToString() + "/";
            if (!Directory.Exists(dirPath))
            {
                return false;
            }

            if (System.IO.File.Exists(dirPath + "/" + fileName))
            {
                System.IO.File.Delete(dirPath + "/" + fileName);
                isExist = true;
            }
            return isExist;
        }

        [NonAction]
        public string UploadFile(string base64String, int employeeId)
        {
            if (!string.IsNullOrEmpty(base64String) && employeeId > 0)
            {
                string assetDir = Path.GetFullPath(Messages.wwwroot) + Messages.assets;
                if (!Directory.Exists(assetDir))
                {
                    Directory.CreateDirectory(assetDir);
                }

                string hrDir = Path.GetFullPath(Messages.wwwroot) + Messages.assethr;
                if (!Directory.Exists(hrDir))
                {
                    Directory.CreateDirectory(hrDir);
                }

                String dirPath = Path.GetFullPath(Messages.wwwroot) + Messages.assethr + employeeId.ToString() + "/";
                if (!Directory.Exists(dirPath))
                {
                    Directory.CreateDirectory(dirPath);
                }
                String fileName = DateTime.Now.ToString("yyyy-dd-M--HH-mm-ss") + new Common().GetFileExtension(base64String);

                if (fileName.ToLower().EndsWith(".jpg") || fileName.ToLower().EndsWith(".jpeg") || fileName.ToLower().EndsWith(".png") || fileName.ToLower().EndsWith(".ico") || fileName.ToLower().EndsWith(".tiff") || fileName.ToLower().EndsWith(".gif"))
                {
                    string imageDir = dirPath + "/" + Messages.images + "/";
                    if (!Directory.Exists(imageDir))
                    {
                        Directory.CreateDirectory(imageDir);
                    }
                    byte[] imgByteArray = Convert.FromBase64String(base64String.Split(",")[1]);
                    System.IO.File.WriteAllBytes(imageDir + fileName, imgByteArray);
                    return Messages.images + "/" + fileName;
                }
                else
                {
                    string attachmentDir = dirPath + "/" + Messages.attachments + "/";
                    if (!Directory.Exists(attachmentDir))
                    {
                        Directory.CreateDirectory(attachmentDir);
                    }
                    byte[] fileByteArray = Convert.FromBase64String(base64String.Split(",")[1]);
                    System.IO.File.WriteAllBytes(attachmentDir + fileName, fileByteArray);
                    return Messages.attachments + "/" + fileName;
                }
            }
            return string.Empty;
        }

        #endregion
    }
}
