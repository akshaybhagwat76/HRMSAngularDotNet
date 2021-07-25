using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class ProfessionalInformation : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public ProfessionalInformation(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("professionalinformation")]
        public async Task<ActionResult<List<Sys_ProfessionalInformationDto>>> GetBranchAsync()
        {
            try
            {
                var professionalinformation = await _unitOfWork.Repository<Sys_ProfessionalInformation>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_ProfessionalInformation>, IReadOnlyList<Sys_ProfessionalInformationDto>>(professionalinformation);

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
