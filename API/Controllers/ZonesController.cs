using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using API.Errors;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Core.Specifications;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using static API.Helpers.Common;

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

                List<ReplyFormat> lstRegionZoneList = null;

                if (data != null && data.Count > 0)
                {
                    lstRegionZoneList = data.Select(x => new ReplyFormat { Value = x.Id, Text =x.Zone_Name, Group = x.Country_Id }).ToList();
                }
                return Ok(lstRegionZoneList);

            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
