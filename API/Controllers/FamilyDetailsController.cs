using System;
using System.Collections.Generic;
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
    public class FamilyDetailsController : BaseApiController
    {
        #region Declarations
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        #endregion

        #region Constructor
        public FamilyDetailsController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion


        #region Get Methods
        [HttpGet("GetFamilyDetails")]
        public async Task<ActionResult<List<Sys_FamilyDetailsDto>>> GetFamilyDetailsAsync()
        {
            try
            {
                var hR_Employees = await _unitOfWork.Repository<Sys_FamilyDetails>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_FamilyDetails>, IReadOnlyList<Sys_FamilyDetailsDto>>(hR_Employees);

                return Ok(new List<Sys_FamilyDetailsDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        [HttpGet("GetFamilyDetailsById")]
        public async Task<ActionResult<Sys_FamilyDetailsDto>> GetFamilyDetailsByIdAsync(int Id)
        {
            try
            {
                var familyDetails = await _unitOfWork.Repository<Sys_FamilyDetails>().GetByIdAsync(Id);
                if (familyDetails == null) return NotFound(new ApiResponse(404));
                return _mapper.Map<Sys_FamilyDetails, Sys_FamilyDetailsDto>(familyDetails);
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

    }
}
