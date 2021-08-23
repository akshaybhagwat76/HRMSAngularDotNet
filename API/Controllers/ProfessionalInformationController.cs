using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using API.Dtos;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class ProfessionalInformationController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public ProfessionalInformationController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("professionalinformation")]
        public async Task<ActionResult<List<Sys_ProfessionalInformationDto>>> GetProfessionalinformationAsync()
        {
            try
            {
                var bloodGroups = await _unitOfWork.Repository<Sys_ProfessionalInformation>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_ProfessionalInformation>, IReadOnlyList<Sys_ProfessionalInformationDto>>(bloodGroups);

                return Ok(new List<Sys_ProfessionalInformationDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
