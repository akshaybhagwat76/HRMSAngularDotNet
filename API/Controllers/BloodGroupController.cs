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
    public class BloodGroupController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public BloodGroupController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("bloodgroup")]

        public async Task<ActionResult<SelectList>> GetBloodGroupsAsync()
        {
            try
            {
                var bloodGroups = await _unitOfWork.Repository<Sys_BloodGroup>().ListAllAsync();
                var data = _mapper.Map<IReadOnlyList<Sys_BloodGroup>, IReadOnlyList<Sys_BloodGroupDto>>(bloodGroups);
                SelectList bloodGroupsList = null;
                if (data != null && data.Count > 0)
                {
                    bloodGroupsList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.BloodGroup_Name }),
              "Value",
              "Text"
          );
                }
                return Ok(bloodGroupsList);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
