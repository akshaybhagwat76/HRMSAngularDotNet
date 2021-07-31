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
    public class PermanentContactInformationController : BaseApiController
    {
        #region Declarations
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        #endregion

        #region Constructor
        public PermanentContactInformationController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion


        #region Get Methods
        [HttpGet("GetFamilyDetailsPermanentContactInformation")]
        public async Task<ActionResult<List<Sys_PermanentContactInformationDto>>> GetPermanentContactInformationAsync()
        {
            try
            {
                var hR_Employees = await _unitOfWork.Repository<Sys_PermanentContactInformation>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_PermanentContactInformation>, IReadOnlyList<Sys_PermanentContactInformationDto>>(hR_Employees);

                return Ok(new List<Sys_PermanentContactInformationDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }

        [HttpGet("GetPermanentContactInformationById")]
        public async Task<ActionResult<Sys_PermanentContactInformationDto>> GetPermanentContactInformationByIdAsync(int Id)
        {
            try
            {
                var permanentContactInformation  = await _unitOfWork.Repository<Sys_PermanentContactInformation>().GetByIdAsync(Id);
                if (permanentContactInformation == null) return NotFound(new ApiResponse(404));
                return _mapper.Map<Sys_PermanentContactInformation, Sys_PermanentContactInformationDto>(permanentContactInformation);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }


        #endregion

        #region Add new Permanent Contact Informations
        [HttpPost("AddPermanentContactInformations")]
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
    }
}
