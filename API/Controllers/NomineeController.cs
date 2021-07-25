using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using API.Dtos;
using API.Errors;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;
namespace API.Controllers
{
    [ApiController]
    [Route("api/")]
    public class NomineeController : BaseApiController
    {
        #region Declarations
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        #endregion

        #region Constructor
        public NomineeController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get Methods

        [HttpGet("GetNominee")]
        public async Task<ActionResult<List<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>>> GetNomineeAsync()
        {
            try
            {
                var products = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>, IReadOnlyList<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>>(products);

                return Ok(new List<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }

        [HttpGet("GetNomineeById")]
        public async Task<ActionResult<TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>> GetNomineeByIdAsync(int Id)
        {
            try
            {
                var employeeNonimee = await _unitOfWork.Repository<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>().GetByIdAsync(Id);
                if (employeeNonimee == null) return NotFound(new ApiResponse(404));
                return _mapper.Map<TBL_HR_EMPLOYEE_NOMINEE_DETAILS, TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto>(employeeNonimee);

            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }

        #endregion

        #region Add new nominee

        [HttpPost("AddNominee")]
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
    }
}
