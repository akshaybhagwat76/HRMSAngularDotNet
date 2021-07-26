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
    [Route("api/[controller]")]
    [ApiController]
    public class HighestQualificationController : BaseApiController
    {

        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public HighestQualificationController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("highestqualification")]
        public async Task<ActionResult<List<Sys_Highest_QualificationDto>>> GetHighestqualificationAsync()
        {
            try
            {
                var highestqualification = await _unitOfWork.Repository<Sys_Highest_Qualification>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_Highest_Qualification>, IReadOnlyList<Sys_Highest_QualificationDto>>(highestqualification);

                return Ok(new List<Sys_Highest_QualificationDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
