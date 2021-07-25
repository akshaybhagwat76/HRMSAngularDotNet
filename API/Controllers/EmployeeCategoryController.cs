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
    public class EmployeeCategoryController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public EmployeeCategoryController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("categories")]
        public async Task<ActionResult<List<Sys_Employee_CategoryDto>>> GetCompanyAsync()
        {
            try
            {
                var categories = await _unitOfWork.Repository<Sys_Employee_Category>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_Employee_Category>, IReadOnlyList<Sys_Employee_CategoryDto>>(categories);

                return Ok(new List<Sys_Employee_CategoryDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
