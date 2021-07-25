using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using API.Dtos;
using API.Errors;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Core.Specifications;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class ZonesController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public ZonesController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("zones")]
        public async Task<ActionResult<List<Sys_REGION_ZONEDto>>> GetZonesAsync()
        {
            try
            {
                var sTATEs = await _unitOfWork.Repository<Sys_REGION_ZONE>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_REGION_ZONE>, IReadOnlyList<Sys_REGION_ZONEDto>>(sTATEs);

                return Ok(new List<Sys_REGION_ZONEDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
