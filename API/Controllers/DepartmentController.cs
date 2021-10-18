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
    public class DepartmentController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public DepartmentController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("departments")]
        public async Task<ActionResult<List<Sys_DEPARTMENTDto>>> GetDepartmentAsync()
        {
            try
            {
                var departments = await _unitOfWork.Repository<Sys_DEPARTMENT>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_DEPARTMENT>, IReadOnlyList<Sys_DEPARTMENTDto>>(departments);

                SelectList deparmentList = null;
                if (data != null && data.Count > 0)
                {
                    deparmentList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.Department_Name }),
              "Value",
              "Text"
          );
                }
                return Ok(deparmentList);

                return Ok(new List<Sys_DEPARTMENTDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
