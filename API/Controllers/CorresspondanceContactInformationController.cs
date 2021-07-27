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
    public class CorresspondanceContactInformationController : BaseApiController
    {

        #region Declarations
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        #endregion

        #region Constructor
        public CorresspondanceContactInformationController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion


        #region Get Methods
        [HttpGet("GetCorresspondanceContactInformation")]
        public async Task<ActionResult<List<Sys_CorresspondanceContactInformationDto>>> GetCorresspondanceContactInformationAsync()
        {
            try
            {
                var hR_Employees = await _unitOfWork.Repository<Sys_CorresspondanceContactInformation>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_CorresspondanceContactInformation>, IReadOnlyList<Sys_CorresspondanceContactInformationDto>>(hR_Employees);

                return Ok(new List<Sys_CorresspondanceContactInformationDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }

        [HttpGet("GetCorresspondanceContactInformationById")]
        public async Task<ActionResult<Sys_CorresspondanceContactInformationDto>> GetPermanentContactInformationByIdAsync(int Id)
        {
            try
            {
                var permanentContactInformation  = await _unitOfWork.Repository<Sys_CorresspondanceContactInformation>().GetByIdAsync(Id);
                if (permanentContactInformation == null) return NotFound(new ApiResponse(404));
                return _mapper.Map<Sys_CorresspondanceContactInformation, Sys_CorresspondanceContactInformationDto>(permanentContactInformation);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }


        #endregion

        #region Add new employee
        [HttpPost("AddCorresspondanceContactInformation")]
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
    }
    
}
