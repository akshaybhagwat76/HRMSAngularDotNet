using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Dtos;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class CastController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public CastController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("casts")]
        public async Task<ActionResult<List<Sys_CastDto>>> GetCastAsync()
        {
            try
            {
                var cast = await _unitOfWork.Repository<Sys_Cast>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_Cast>, IReadOnlyList<Sys_CastDto>>(cast);

                SelectList castList = null;
                if (data != null && data.Count > 0)
                {
                    castList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.Cast_Name }),
              "Value",
              "Text"
              );
                }
                return Ok(castList);
               // return Ok(new List<Sys_CastDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
