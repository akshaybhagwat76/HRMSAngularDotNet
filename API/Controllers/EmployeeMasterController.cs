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
    [Route("api/[controller]")]
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
                    EmployeeMasterDto.IsActive = EmployeeMasterDto.Status = true; EmployeeMasterDto.IsDeleted = false;
                    employeeMaster = _mapper.Map<Sys_EmployeeMasterDto, Sys_EmployeeMaster>(EmployeeMasterDto);
                    _unitOfWork.Repository<Sys_EmployeeMaster>().Add(employeeMaster);
                    result = await _unitOfWork.Complete();
                }
                else
                {
                    employeeMaster = await _unitOfWork.Repository<Sys_EmployeeMaster>().GetByIdAsync(EmployeeMasterDto.Id);
                    employeeMaster = _mapper.Map<Sys_EmployeeMasterDto, Sys_EmployeeMaster>(EmployeeMasterDto);

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
                        if (EmployeeMasterDto.sys_CorresspondanceContactInformationDto != null)
                        {
                            EmployeeMasterDto.sys_CorresspondanceContactInformationDto.Employee_Id = employeeMaster.Id;
                            await AddCorresspondanceContactInformationAsync(EmployeeMasterDto.sys_CorresspondanceContactInformationDto);
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
                    tbl_Employees = tbl_Employees.Where(x => x.IsDeleted && x.IsActive).ToList();
                    tbl_Employees.WhereIf(employeeSearchDTO.CompanyId > 0, x => x.CompanyId == employeeSearchDTO.CompanyId)
                                 .WhereIf(employeeSearchDTO.DepartmentId > 0, x => x.DepartmentId == employeeSearchDTO.DepartmentId)
                                 .WhereIf(employeeSearchDTO.Project_BranchId > 0, x => x.Project_BranchId == employeeSearchDTO.Project_BranchId)
                                 .WhereIf(employeeSearchDTO.DesignationId > 0, x => x.DesignationId == employeeSearchDTO.DesignationId)
                                 .WhereIf(!string.IsNullOrEmpty(employeeSearchDTO.EmployeeCode), x => x.EmployeeCode == employeeSearchDTO.EmployeeCode)
                                 .WhereIf(!string.IsNullOrEmpty(employeeSearchDTO.FirstName), x => x.FirstName == employeeSearchDTO.FirstName)
                                 .WhereIf(!string.IsNullOrEmpty(employeeSearchDTO.email), x => x.email == employeeSearchDTO.email).ToList();


                    if (employeeSearchDTO.StatusId == 1)
                    {
                        tbl_Employees = tbl_Employees.Where(x => x.Status == true || x.Status == false).ToList();
                    }
                    else if (employeeSearchDTO.StatusId == 2)
                    {
                        tbl_Employees = tbl_Employees.Where(x => x.Status == false).ToList();
                    }
                    else if (employeeSearchDTO.StatusId == 3)
                    {
                        tbl_Employees = tbl_Employees.Where(x => x.Status == true).ToList();
                    }

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

        [HttpGet("GetEmployee")]
        public async Task<ActionResult<Sys_EmployeeMasterDto>> GetEmployee(int employeeId)
        {
            Sys_EmployeeMasterDto sys_EmployeeMaster = new Sys_EmployeeMasterDto();
            try
            {
                sys_EmployeeMaster = _mapper.Map<Sys_EmployeeMaster, Sys_EmployeeMasterDto>(await _storeContext.Sys_EmployeeMaster.Where(x => x.Id == employeeId && !x.IsDeleted && x.IsActive).FirstOrDefaultAsync());
                var familyDetail = await _storeContext.Sys_FamilyDetails.Where(x => x.Employee_Id == employeeId).ToListAsync();
                if (sys_EmployeeMaster == null)
                {
                    sys_EmployeeMaster = new Sys_EmployeeMasterDto();
                }

                if(familyDetail==null || familyDetail.Count == 0)
                {
                    familyDetail = new List<Sys_FamilyDetails>();
                }

                sys_EmployeeMaster.sys_FamilyDetailsDto = _mapper.Map<List<Sys_FamilyDetails>, List<Sys_FamilyDetailsDto>>(familyDetail);

                var nomineeDetails = await _storeContext.TBL_HR_EMPLOYEE_NOMINEE_DETAILS.Where(x => x.Employee_Id == employeeId).ToListAsync();

                if (nomineeDetails == null || nomineeDetails.Count == 0)
                {
                    nomineeDetails = new List<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>();
                }
                sys_EmployeeMaster.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto = _mapper.Map<List<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>, List<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>>(nomineeDetails);

                var educationalQualifications = await _storeContext.HR_EMPLOYEE_EDUCATION_DETAILs.Where(x => x.Employee_Id == employeeId).ToListAsync();

                if (educationalQualifications == null || educationalQualifications.Count == 0)
                {
                    educationalQualifications = new List<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>();
                }
                sys_EmployeeMaster.sys_EducationalQualificationDto = _mapper.Map<List<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>, List<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>>(educationalQualifications);

                if (sys_EmployeeMaster.sys_EducationalQualificationDto != null && sys_EmployeeMaster.sys_EducationalQualificationDto.Count > 0)
                {
                    foreach (TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto TBL_HR_EMPLOYEE_EDUCATION_DETAIL in sys_EmployeeMaster.sys_EducationalQualificationDto)
                    {
                        List<TBL_Educational_Qualification_Attachements> LstTBL_Educational_Qualification_Attachement = await _storeContext.TBL_Educational_Qualification_Attachements.Where(x => x.EmployeeId == employeeId && x.Educational_Qualification_Id == TBL_HR_EMPLOYEE_EDUCATION_DETAIL.Id).ToListAsync();
                        if (LstTBL_Educational_Qualification_Attachement == null || LstTBL_Educational_Qualification_Attachement.Count == 0)
                        {
                            LstTBL_Educational_Qualification_Attachement = new List<TBL_Educational_Qualification_Attachements>();
                        }
                        TBL_HR_EMPLOYEE_EDUCATION_DETAIL.Attachments = _mapper.Map<List<TBL_Educational_Qualification_Attachements>, List<TBL_Educational_Qualification_AttachementsDto>>(LstTBL_Educational_Qualification_Attachement);
                    }
                }


                var permanentContactInformation = await _storeContext.Sys_PermanentContactInformation.Where(x => x.Employee_Id == employeeId).FirstOrDefaultAsync();
                if (permanentContactInformation == null)
                {
                    permanentContactInformation = new Sys_PermanentContactInformation();
                }
                sys_EmployeeMaster.sys_PermanentContactInformationDto = _mapper.Map<Sys_PermanentContactInformation, Sys_PermanentContactInformationDto>(permanentContactInformation);

                var corresspondanceContactInformation = await _storeContext.Sys_CorresspondanceContactInformation.Where(x => x.Employee_Id == employeeId).FirstOrDefaultAsync();
                if (corresspondanceContactInformation == null)
                {
                    corresspondanceContactInformation = new Sys_CorresspondanceContactInformation();
                }
                sys_EmployeeMaster.sys_CorresspondanceContactInformationDto = _mapper.Map<Sys_CorresspondanceContactInformation, Sys_CorresspondanceContactInformationDto>(corresspondanceContactInformation);


                var professionalInformation = await _storeContext.Sys_ProfessionalInformation.Where(x => x.Employee_Id == employeeId).ToListAsync();
                if (professionalInformation == null)
                {
                    professionalInformation = new List<Sys_ProfessionalInformation>();
                }
                sys_EmployeeMaster.sys_ProfessionalInformations = _mapper.Map<List<Sys_ProfessionalInformation>, List<Sys_ProfessionalInformationDto>>(professionalInformation);

                if (sys_EmployeeMaster.sys_ProfessionalInformations != null && sys_EmployeeMaster.sys_ProfessionalInformations.Count > 0)
                {
                    foreach (Sys_ProfessionalInformationDto Sys_ProfessionalInformation in sys_EmployeeMaster.sys_ProfessionalInformations)
                    {
                        List<TBL_Professional_Information_Attachements> LstTBL_Professional_Information_Attachement = await _storeContext.TBL_Professional_Information_Attachements.Where(x => x.EmployeeId == employeeId && x.Professional_Information_Attachements_Id == Sys_ProfessionalInformation.Id).ToListAsync();
                        if (LstTBL_Professional_Information_Attachement == null)
                        {
                            LstTBL_Professional_Information_Attachement = new List<TBL_Professional_Information_Attachements>();
                        }
                        Sys_ProfessionalInformation.Attachments = _mapper.Map<List<TBL_Professional_Information_Attachements>, List<TBL_Professional_Information_AttachementsDto>>(LstTBL_Professional_Information_Attachement);
                    }
                }

                var OtherInformation = await _storeContext.Sys_OtherInformation.Where(x => x.Employee_Id == employeeId).FirstOrDefaultAsync();
                sys_EmployeeMaster.sys_OtherInformationDto = _mapper.Map<Sys_OtherInformation, Sys_OtherInformationDto>(OtherInformation);

                if (sys_EmployeeMaster.sys_OtherInformationDto != null && sys_EmployeeMaster.sys_OtherInformationDto.Id > 0)
                {
                    List<Sys_Identity_Proof> LstSys_IdentityProof = await _storeContext.Sys_Identity_Proof.Where(x => x.OtherInformationId == sys_EmployeeMaster.sys_OtherInformationDto.Id).ToListAsync();
                    if (LstSys_IdentityProof == null)
                    {
                        LstSys_IdentityProof = new List<Sys_Identity_Proof>();
                    }
                    sys_EmployeeMaster.sys_OtherInformationDto.sys_Identity_Proofs = _mapper.Map<List<Sys_Identity_Proof>, List<Sys_Identity_ProofDto>>(LstSys_IdentityProof);

                    foreach (Sys_Identity_ProofDto sys_Identity_Proof in sys_EmployeeMaster.sys_OtherInformationDto.sys_Identity_Proofs)
                    {
                        List<TBL_Identity_Proof_Attachements> LstTBL_Identity_Proof_Attachement = await _storeContext.TBL_Identity_Proof_Attachements.Where(x => x.EmployeeId == employeeId && x.Identity_Proof_Id == sys_Identity_Proof.Id).ToListAsync();
                        if (LstTBL_Identity_Proof_Attachement == null)
                        {
                            LstTBL_Identity_Proof_Attachement = new List<TBL_Identity_Proof_Attachements>();
                        }
                        sys_Identity_Proof.Attachments = _mapper.Map<List<TBL_Identity_Proof_Attachements>, List<TBL_Identity_Proof_AttachementsDto>>(LstTBL_Identity_Proof_Attachement);
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

        #region Add new family detail
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
                    familyDetail = _mapper.Map<Sys_FamilyDetailsDto, Sys_FamilyDetails>(familyDetailsDto);

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
                    var educationQualificationDto = _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto, TBL_HR_EMPLOYEE_EDUCATION_DETAILS>(EducationQuilificationDto);

                    _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().Add(educationQualificationDto);
                    var result = await _unitOfWork.Complete();
                    if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating education quilification"));
                    int EducationQuilificationId = GetLastRecordFromTable(Messages.tBL_HR_EMPLOYEE_EDUCATION_DETAILs);

                    if (EducationQuilificationDto.Attachments != null && EducationQuilificationDto.Attachments.Count > 0)
                    {
                        foreach (TBL_Educational_Qualification_AttachementsDto TBL_Educational_Qualification_Attachement in EducationQuilificationDto.Attachments)
                        {
                            if (!string.IsNullOrEmpty(TBL_Educational_Qualification_Attachement.DocumentType) && !string.IsNullOrEmpty(TBL_Educational_Qualification_Attachement.DocumentUrl) && TBL_Educational_Qualification_Attachement.DocumentUrl.Length > 1000)
                            {
                                string docUrl = UploadFile(TBL_Educational_Qualification_Attachement.DocumentUrl, EducationQuilificationDto.Employee_Id);
                                TBL_Educational_Qualification_AttachementsDto Educational_Qualification_AttachementsDto = new TBL_Educational_Qualification_AttachementsDto() { EmployeeId = EducationQuilificationDto.Employee_Id, DocumentType = TBL_Educational_Qualification_Attachement.DocumentType, Educational_Qualification_Id = EducationQuilificationId, DocumentUrl = docUrl };
                                var Educational_Qualification_Attachement = _mapper.Map<TBL_Educational_Qualification_AttachementsDto, TBL_Educational_Qualification_Attachements>(Educational_Qualification_AttachementsDto);
                                _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().Add(Educational_Qualification_Attachement);
                                var resultEducational_Qualification_Attachement = await _unitOfWork.Complete();
                            }
                        }

                    }
                    return _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILS, TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>(educationQualificationDto);
                }
                else
                {
                    TBL_HR_EMPLOYEE_EDUCATION_DETAILS educationQuilificationDto = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().GetByIdAsync(EducationQuilificationDto.Id);
                    educationQuilificationDto = _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto, TBL_HR_EMPLOYEE_EDUCATION_DETAILS>(EducationQuilificationDto);

                    _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().Update(educationQuilificationDto);

                    if (EducationQuilificationDto.Attachments != null && EducationQuilificationDto.Attachments.Count > 0)
                    {
                        foreach (TBL_Educational_Qualification_AttachementsDto TBL_Educational_Qualification_Attachement in EducationQuilificationDto.Attachments)
                        {
                            if (!string.IsNullOrEmpty(TBL_Educational_Qualification_Attachement.DocumentType) && !string.IsNullOrEmpty(TBL_Educational_Qualification_Attachement.DocumentUrl) && TBL_Educational_Qualification_Attachement.DocumentUrl.Length > 1000)
                            {
                                string docUrl = UploadFile(TBL_Educational_Qualification_Attachement.DocumentUrl, EducationQuilificationDto.Employee_Id);
                                TBL_Educational_Qualification_AttachementsDto Educational_Qualification_AttachementsDto = new TBL_Educational_Qualification_AttachementsDto() { EmployeeId = EducationQuilificationDto.Employee_Id, DocumentType = TBL_Educational_Qualification_Attachement.DocumentType, Educational_Qualification_Id = educationQuilificationDto.Id, DocumentUrl = docUrl };
                                var Educational_Qualification_Attachement = _mapper.Map<TBL_Educational_Qualification_AttachementsDto, TBL_Educational_Qualification_Attachements>(Educational_Qualification_AttachementsDto);

                                if (TBL_Educational_Qualification_Attachement.Id == 0)
                                {
                                    _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().Add(Educational_Qualification_Attachement);
                                }
                                else
                                {
                                    _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().Update(Educational_Qualification_Attachement);
                                }
                                var resultEducational_Qualification_Attachement = await _unitOfWork.Complete();
                            }
                            if (string.IsNullOrEmpty(TBL_Educational_Qualification_Attachement.DocumentUrl))
                            {
                                var Educational_Qualification_Attachement = await _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().GetByIdAsync(TBL_Educational_Qualification_Attachement.Id);
                                if (RemoveFile(Educational_Qualification_Attachement.DocumentUrl, educationQuilificationDto.Employee_Id))
                                {
                                    _unitOfWork.Repository<TBL_Educational_Qualification_Attachements>().Delete(Educational_Qualification_Attachement);
                                    var resultEducational_Qualification_Attachement = await _unitOfWork.Complete();
                                    if (resultEducational_Qualification_Attachement <= 0) return BadRequest(new ApiResponse(400, "Problem deleting Educational_Qualification_Attachement"));
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

                    if (ProfessionalInformationDto.Attachments != null && ProfessionalInformationDto.Attachments.Count > 0)
                    {
                        foreach (TBL_Professional_Information_AttachementsDto TBL_Professional_Information_Attachement in ProfessionalInformationDto.Attachments)
                        {
                            if (!string.IsNullOrEmpty(TBL_Professional_Information_Attachement.DocumentType) && !string.IsNullOrEmpty(TBL_Professional_Information_Attachement.DocumentUrl) && TBL_Professional_Information_Attachement.DocumentUrl.Length > 1000)
                            {
                                string docUrl = UploadFile(TBL_Professional_Information_Attachement.DocumentUrl, ProfessionalInformationDto.Employee_Id);
                                TBL_Professional_Information_AttachementsDto Professional_Information_AttachementsDto = new TBL_Professional_Information_AttachementsDto() { EmployeeId = ProfessionalInformationDto.Employee_Id, DocumentType = TBL_Professional_Information_Attachement.DocumentType, Professional_Information_Attachements_Id = ProfessionalInformationId, DocumentUrl = docUrl };
                                var Professional_Information_Attachement = _mapper.Map<TBL_Professional_Information_AttachementsDto, TBL_Professional_Information_Attachements>(TBL_Professional_Information_Attachement);
                                _unitOfWork.Repository<TBL_Professional_Information_Attachements>().Add(Professional_Information_Attachement);
                                var resultProfessional_Information_Attachement = await _unitOfWork.Complete();
                            }
                        }

                    }
                    return _mapper.Map<Sys_ProfessionalInformation, Sys_ProfessionalInformationDto>(professionalInformationDto);
                }
                else
                {
                    Sys_ProfessionalInformation professionalInformationDto = await _unitOfWork.Repository<Sys_ProfessionalInformation>().GetByIdAsync(ProfessionalInformationDto.Id);
                    professionalInformationDto = _mapper.Map<Sys_ProfessionalInformationDto, Sys_ProfessionalInformation>(ProfessionalInformationDto);
                    _unitOfWork.Repository<Sys_ProfessionalInformation>().Update(professionalInformationDto);

                    if (ProfessionalInformationDto.Attachments != null && ProfessionalInformationDto.Attachments.Count > 0)
                    {
                        foreach (TBL_Professional_Information_AttachementsDto TBL_Professional_Information_Attachements in ProfessionalInformationDto.Attachments)
                        {
                            if (!string.IsNullOrEmpty(TBL_Professional_Information_Attachements.DocumentType) && !string.IsNullOrEmpty(TBL_Professional_Information_Attachements.DocumentUrl) && TBL_Professional_Information_Attachements.DocumentUrl.Length > 1000)
                            {
                                string docUrl = UploadFile(TBL_Professional_Information_Attachements.DocumentUrl, professionalInformationDto.Employee_Id);
                                TBL_Professional_Information_AttachementsDto Professional_Information_AttachementsDto = new TBL_Professional_Information_AttachementsDto() { EmployeeId = professionalInformationDto.Employee_Id, DocumentType = TBL_Professional_Information_Attachements.DocumentType, Professional_Information_Attachements_Id = professionalInformationDto.Id, DocumentUrl = docUrl };
                                var professional_Information_Attachement = _mapper.Map<TBL_Professional_Information_AttachementsDto, TBL_Professional_Information_Attachements>(Professional_Information_AttachementsDto);

                                if (TBL_Professional_Information_Attachements.Id == 0)
                                {
                                    _unitOfWork.Repository<TBL_Professional_Information_Attachements>().Add(professional_Information_Attachement);
                                }
                                else
                                {
                                    _unitOfWork.Repository<TBL_Professional_Information_Attachements>().Update(professional_Information_Attachement);
                                }
                                var resultProfessional_InformationAttachment = await _unitOfWork.Complete();
                            }
                            if (string.IsNullOrEmpty(TBL_Professional_Information_Attachements.DocumentUrl))
                            {
                                var Professional_Information_Attachement = await _unitOfWork.Repository<TBL_Professional_Information_Attachements>().GetByIdAsync(TBL_Professional_Information_Attachements.Id);
                                if (RemoveFile(Professional_Information_Attachement.DocumentUrl, professionalInformationDto.Employee_Id))
                                {
                                    _unitOfWork.Repository<TBL_Professional_Information_Attachements>().Delete(Professional_Information_Attachement);
                                    var resultProfessional_InformationAttachment = await _unitOfWork.Complete();
                                    if (resultProfessional_InformationAttachment <= 0) return BadRequest(new ApiResponse(400, "Problem deleting Educational_Qualification_Attachement"));
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
                        employeeNonimee = _mapper.Map<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto, TBL_HR_EMPLOYEE_NOMINEE_DETAILS>(NomineeDto);
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

        #region Add new Permanent Contact Information
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
                    permanentContactInformation = _mapper.Map<Sys_PermanentContactInformationDto, Sys_PermanentContactInformation>(permanentContactInformationDto);
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

        #region Add new Corresspondance Contact Information
        [NonAction]
        public async Task<ActionResult<Sys_CorresspondanceContactInformationDto>> AddCorresspondanceContactInformationAsync(Sys_CorresspondanceContactInformationDto corresspondanceContactInformationDto)
        {
            try
            {
                if (corresspondanceContactInformationDto == null)
                {
                    return new Sys_CorresspondanceContactInformationDto();
                }
                if (corresspondanceContactInformationDto.Id == 0)
                {
                    var corresspondanceContactInformation = _mapper.Map<Sys_CorresspondanceContactInformationDto, Sys_CorresspondanceContactInformation>(corresspondanceContactInformationDto);
                    _unitOfWork.Repository<Sys_CorresspondanceContactInformation>().Add(corresspondanceContactInformation);
                    var result = await _unitOfWork.Complete();

                    if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employee"));
                    return _mapper.Map<Sys_CorresspondanceContactInformation, Sys_CorresspondanceContactInformationDto>(corresspondanceContactInformation);
                }
                else
                {
                    Sys_CorresspondanceContactInformation corresspondanceContactInformation = await _unitOfWork.Repository<Sys_CorresspondanceContactInformation>().GetByIdAsync(corresspondanceContactInformationDto.Id);
                    corresspondanceContactInformation = _mapper.Map<Sys_CorresspondanceContactInformationDto, Sys_CorresspondanceContactInformation>(corresspondanceContactInformationDto);
                    _unitOfWork.Repository<Sys_CorresspondanceContactInformation>().Update(corresspondanceContactInformation);
                    return _mapper.Map<Sys_CorresspondanceContactInformation, Sys_CorresspondanceContactInformationDto>(corresspondanceContactInformation);
                }

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
                                if (Sys_Identity_Proof.Attachments != null && Sys_Identity_Proof.Attachments.Count > 0)
                                {
                                    foreach (TBL_Identity_Proof_AttachementsDto TBL_Identity_Proof_Attachements in Sys_Identity_Proof.Attachments)
                                    {
                                        if (!string.IsNullOrEmpty(TBL_Identity_Proof_Attachements.DocumentType) && !string.IsNullOrEmpty(TBL_Identity_Proof_Attachements.DocumentUrl) && TBL_Identity_Proof_Attachements.DocumentUrl.Length > 1000)
                                        {
                                            string docUrl = UploadFile(TBL_Identity_Proof_Attachements.DocumentUrl, OtherInformationDto.Employee_Id);
                                            TBL_Identity_Proof_AttachementsDto Identity_ProofAttachementDto = new TBL_Identity_Proof_AttachementsDto() { EmployeeId = otherInformation.Employee_Id, DocumentType = Identity_Proof.Identity_Type, Identity_Proof_Id = identityProofId, DocumentUrl = docUrl };
                                            var Identity_ProofAttachement = _mapper.Map<TBL_Identity_Proof_AttachementsDto, TBL_Identity_Proof_Attachements>(Identity_ProofAttachementDto);
                                            _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().Add(Identity_ProofAttachement);
                                            var resultIdentity_ProofAttachement = await _unitOfWork.Complete();
                                        }
                                    }

                                }

                            };
                        }
                    }
                }
                else
                {
                    Sys_OtherInformation OtherInformation = await _unitOfWork.Repository<Sys_OtherInformation>().GetByIdAsync(OtherInformationDto.Id);
                    OtherInformation = _mapper.Map<Sys_OtherInformationDto, Sys_OtherInformation>(OtherInformationDto);
                    _unitOfWork.Repository<Sys_OtherInformation>().Update(OtherInformation);

                    if (OtherInformationDto.sys_Identity_Proofs != null && OtherInformationDto.sys_Identity_Proofs.Count > 0)
                    {
                        foreach (Sys_Identity_ProofDto Sys_Identity_ProofDto in OtherInformationDto.sys_Identity_Proofs)
                        {
                            var Identity_Proof = new Sys_Identity_Proof();
                            if (Sys_Identity_ProofDto.Id == 0)
                            {
                                Sys_Identity_ProofDto.OtherInformationId = OtherInformation.Id;
                                Identity_Proof = _mapper.Map<Sys_Identity_ProofDto, Sys_Identity_Proof>(Sys_Identity_ProofDto);
                                _unitOfWork.Repository<Sys_Identity_Proof>().Add(Identity_Proof);
                                var resultIdentity_Proof = await _unitOfWork.Complete();
                                if (resultIdentity_Proof <= 0) return BadRequest(new ApiResponse(400, "Problem creating OtherInformation"));
                            }
                            else
                            {
                                Identity_Proof = await _unitOfWork.Repository<Sys_Identity_Proof>().GetByIdAsync(Sys_Identity_ProofDto.Id);
                                Identity_Proof = _mapper.Map<Sys_Identity_ProofDto, Sys_Identity_Proof>(Sys_Identity_ProofDto);
                                _unitOfWork.Repository<Sys_Identity_Proof>().Update(Identity_Proof);
                            }

                            var lstTBL_Identity_Proof_Attachements = await _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().ListAllAsync();
                            lstTBL_Identity_Proof_Attachements = lstTBL_Identity_Proof_Attachements.Where(x => x.Identity_Proof_Id == Identity_Proof.Id).ToList();

                            foreach (TBL_Identity_Proof_Attachements Identity_Proof_Attachements in lstTBL_Identity_Proof_Attachements)
                            {

                                if (!string.IsNullOrEmpty(Identity_Proof_Attachements.DocumentType) && !string.IsNullOrEmpty(Identity_Proof_Attachements.DocumentUrl) && Identity_Proof_Attachements.DocumentUrl.Length > 1000)
                                {
                                    string docUrl = UploadFile(Identity_Proof_Attachements.DocumentUrl, OtherInformation.Employee_Id);
                                    TBL_Identity_Proof_AttachementsDto TBL_Identity_Proof_AttachementsDto = new TBL_Identity_Proof_AttachementsDto() { EmployeeId = OtherInformation.Employee_Id, DocumentType = Identity_Proof_Attachements.DocumentType, Identity_Proof_Id = Sys_Identity_ProofDto.Id, DocumentUrl = docUrl };
                                    var tblIdentity_Proof_Attachement = _mapper.Map<TBL_Identity_Proof_AttachementsDto, TBL_Identity_Proof_Attachements>(TBL_Identity_Proof_AttachementsDto);

                                    if (tblIdentity_Proof_Attachement.Id == 0)
                                    {
                                        _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().Add(tblIdentity_Proof_Attachement);
                                    }
                                    else
                                    {
                                        _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().Update(tblIdentity_Proof_Attachement);
                                    }
                                    var resultProfessional_InformationAttachment = await _unitOfWork.Complete();
                                }
                                if (string.IsNullOrEmpty(Identity_Proof_Attachements.DocumentUrl))
                                {
                                    var Identity_Proof_Attachement = await _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().GetByIdAsync(Identity_Proof_Attachements.Id);
                                    if (RemoveFile(Identity_Proof_Attachements.DocumentUrl, OtherInformation.Employee_Id))
                                    {
                                        _unitOfWork.Repository<TBL_Identity_Proof_Attachements>().Delete(Identity_Proof_Attachements);
                                        var resultIdentity_Proof_Attachement = await _unitOfWork.Complete();
                                        if (resultIdentity_Proof_Attachement <= 0) return BadRequest(new ApiResponse(400, "Problem deleting Educational_Qualification_Attachement"));
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

        [HttpGet("DeleteEmployee")]
        public async Task<ActionResult> DeleteEmployee(int employeeId)
        {
            if (employeeId > 0)
            {
                Sys_EmployeeMaster sys_EmployeeMaster = await _storeContext.Sys_EmployeeMaster.FindAsync(employeeId);
                sys_EmployeeMaster.IsDeleted = true; sys_EmployeeMaster.IsActive = false;
                return Ok(await _storeContext.SaveChangesAsync());
            }
            else { return BadRequest(); }
        }

        #endregion

        #region Update Employee Master status

        [HttpGet("UpdateStatus")]
        public async Task<ActionResult> UpdateStatus(int employeeId, bool status)
        {
            if (employeeId > 0)
            {
                Sys_EmployeeMaster sys_EmployeeMaster = await _storeContext.Sys_EmployeeMaster.FindAsync(employeeId);
                sys_EmployeeMaster.Status = status;
                return Ok(await _storeContext.SaveChangesAsync());
            }
            else { return BadRequest(); }
        }

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
