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
    public class RelationshipController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public RelationshipController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("relationships")]
        public async Task<ActionResult<List<Sys_RelationShipDto>>> GetRelationShipsAsync()
        {
            try
            {
                var relationShips = await _unitOfWork.Repository<Sys_RelationShip>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_RelationShip>, IReadOnlyList<Sys_RelationShipDto>>(relationShips);

                return Ok(new List<Sys_RelationShipDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
