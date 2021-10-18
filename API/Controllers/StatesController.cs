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

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class StatesController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public StatesController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("states")]
        public async Task<ActionResult<List<Sys_STATEDto>>> GetStatesAsync()
        {
            try
            {
                var sTATEs = await _unitOfWork.Repository<Sys_STATE>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_STATE>, IReadOnlyList<Sys_STATEDto>>(sTATEs);


                SelectList stateList = null;
                if (data != null && data.Count > 0)
                {
                    stateList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.State_Name }),
              "Value",
              "Text"
          );
                }
                return Ok(stateList);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
