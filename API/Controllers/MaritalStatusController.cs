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
using Microsoft.AspNetCore.Mvc.Rendering;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class MaritalStatusController : BaseApiController
    {

        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public MaritalStatusController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("maritalStatus")]
        public async Task<ActionResult<List<Sys_MaritalStatusDto>>> GetThirdPartyAsync()
        {
            try
            {
                var maritalStatus = await _unitOfWork.Repository<Sys_MaritalStatus>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_MaritalStatus>, IReadOnlyList<Sys_MaritalStatusDto>>(maritalStatus);


                SelectList maritalStatusList = null;
                if (data != null && data.Count > 0)
                {
                    maritalStatusList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.Marital_Status }),
              "Value",
              "Text"
          );
                }
                return Ok(maritalStatusList);

            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
