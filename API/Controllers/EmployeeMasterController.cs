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
        #endregion

        #region Constructor
        public EmployeeMasterController(IUnitOfWork unitOfWork, IMapper mapper, IConfiguration configuration, StoreContext storeContext)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
            _configuration = configuration;
            _storeContext = storeContext;
        }
        #endregion

        #region Add new or update employeemaster
        [HttpPost("AddOrUpdateEmployeeMaster")]
        public async Task<ActionResult<Sys_EmployeeMasterDto>> AddOrUpdateEmployeeMaster(Sys_EmployeeMasterDto EmployeeMasterDto)
        {
            using (var context = _storeContext)
            {
                using (var dbContextTransaction = context.Database.BeginTransaction())
                {
                    try
                    {
                        var employeeMaster = _mapper.Map<Sys_EmployeeMasterDto, Sys_EmployeeMaster>(EmployeeMasterDto);
                        employeeMaster.Status = true;
                        _unitOfWork.Repository<Sys_EmployeeMaster>().Add(employeeMaster);
                        var result = await _unitOfWork.Complete();

                        if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating employeemaster"));
                        else
                        {
                            try
                            {
                                if (EmployeeMasterDto.sys_FamilyDetails != null && EmployeeMasterDto.sys_FamilyDetails.Count > 0)
                                {
                                    foreach (var item in EmployeeMasterDto.sys_FamilyDetails)
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
                                if (EmployeeMasterDto.sys_EducationalQualifications != null && EmployeeMasterDto.sys_EducationalQualifications.Count > 0)
                                {
                                    foreach (var item in EmployeeMasterDto.sys_EducationalQualifications)
                                    {
                                        item.Employee_Id = employeeMaster.Id;
                                        await AddEducationalQualificationAsync(item);
                                    }
                                }
                            }
                            catch (Exception) { }
                            try
                            {
                                if (EmployeeMasterDto.tBL_HR_EMPLOYEE_NOMINEE_DETAILS != null && EmployeeMasterDto.tBL_HR_EMPLOYEE_NOMINEE_DETAILS.Count > 0)
                                {
                                    foreach (var item in EmployeeMasterDto.tBL_HR_EMPLOYEE_NOMINEE_DETAILS)
                                    {
                                        item.Employee_Id = employeeMaster.Id;
                                        await AddNomineeAsync(item);
                                    }
                                }
                            }
                            catch (Exception) { }

                            try
                            {
                                if (EmployeeMasterDto.sys_PermanentContactInformation != null)
                                {
                                    EmployeeMasterDto.sys_PermanentContactInformation.Employee_Id = employeeMaster.Id;
                                    await AddPermanentContactInformationAsync(EmployeeMasterDto.sys_PermanentContactInformation);
                                }
                            }
                            catch (Exception) { }

                            try
                            {
                                if (EmployeeMasterDto.sys_OtherInformation != null)
                                {
                                    EmployeeMasterDto.sys_OtherInformation.Employee_Id = employeeMaster.Id;
                                    await AddOtherInformationAsync(EmployeeMasterDto.sys_OtherInformation);
                                }
                            }
                            catch (Exception) { }
                            await dbContextTransaction.CommitAsync();

                            return _mapper.Map<Sys_EmployeeMaster, Sys_EmployeeMasterDto>(employeeMaster);
                        }
                    }
                    catch (Exception exception)
                    {
                        await dbContextTransaction.RollbackAsync();
                        return BadRequest(exception.Message.ToString());
                    }
                }
            }
        }
        #endregion

        #region Get methods
        [HttpGet("SearchEmployee")]
        public async Task<ActionResult<List<Sys_EmployeeMasterDto>>> GetEmployees(EmployeeSearchDTO employeeSearchDTO)
        {
            try
            {
                List<Sys_EmployeeMasterDto> sys_EmployeeMasterDtos = new List<Sys_EmployeeMasterDto>();
                var tbl_Employees = await _unitOfWork.Repository<Sys_EmployeeMaster>().ListAllAsync();

                if (tbl_Employees.Count > 0 && employeeSearchDTO != null)
                {
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
                    return _mapper.Map<TBL_HR_EMPLOYEE_EDUCATION_DETAILS, TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto>(educationQuilificationDto);
                }
                else
                {
                    TBL_HR_EMPLOYEE_EDUCATION_DETAILS educationQuilificationDto = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().GetByIdAsync(EducationQuilificationDto.Id);
                    _unitOfWork.Repository<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>().Update(educationQuilificationDto);
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
                    if (result <= 0) return BadRequest(new ApiResponse(400, "Problem creating education quilification"));
                    return _mapper.Map<Sys_ProfessionalInformation, Sys_ProfessionalInformationDto>(professionalInformationDto);
                }
                else
                {
                    Sys_ProfessionalInformation professionalInformationDto = await _unitOfWork.Repository<Sys_ProfessionalInformation>().GetByIdAsync(ProfessionalInformationDto.Id);
                    _unitOfWork.Repository<Sys_ProfessionalInformation>().Update(professionalInformationDto);
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
        //[NonAction]
        [HttpPost("AddOtherInformationAsync")]

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

                    int otherInformationId = GetLastRecordFromTable("tbl_OtherInformation");

                    if (OtherInformationDto.sys_Identity_Proofs != null && OtherInformationDto.sys_Identity_Proofs.Count > 0)
                    {
                        foreach (Sys_Identity_ProofDto Sys_Identity_Proof in OtherInformationDto.sys_Identity_Proofs)
                        {
                            Sys_Identity_Proof.OtherInformationId = otherInformationId;
                            var Identity_Proof = _mapper.Map<Sys_Identity_ProofDto, Sys_Identity_Proof>(Sys_Identity_Proof);
                            _unitOfWork.Repository<Sys_Identity_Proof>().Add(Identity_Proof);
                            var resultIdentity_Proof = await _unitOfWork.Complete();
                            if (resultIdentity_Proof <= 0) return BadRequest(new ApiResponse(400, "Problem creating OtherInformation"));
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
                                if (!string.IsNullOrEmpty(Sys_Identity_Proof.Attachments) && Sys_Identity_Proof.Attachments.Length > 1000)
                                {
                                    Sys_Identity_Proof Identity_Proof = await _unitOfWork.Repository<Sys_Identity_Proof>().GetByIdAsync(Sys_Identity_Proof.Id);
                                    _unitOfWork.Repository<Sys_Identity_Proof>().Update(Identity_Proof);
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

        public int GetLastRecordFromTable(string tableName)
        {
            var dbConn = _configuration.GetValue<string>("ConnectionStrings:FreelencerDB");
            int letestInformationId = 0;
            SqlConnection sqlConnection = new SqlConnection(dbConn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = sqlConnection;
            sqlConnection.Open();
            SqlCommand MyCommand = new SqlCommand($"select top 1 Id from {tableName} order by Id desc", sqlConnection);
            letestInformationId = Convert.ToInt32(MyCommand.ExecuteScalar());
            sqlConnection.Close();
            return letestInformationId;
        }
    }
}
