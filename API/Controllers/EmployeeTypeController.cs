﻿using System;
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
    public class EmployeeTypeController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public EmployeeTypeController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("types")]
        public async Task<ActionResult<List<Sys_Employee_TypeDto>>> GetCompanyAsync()
        {
            try
            {
                var typies = await _unitOfWork.Repository<Sys_Employee_Type>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_Employee_Type>, IReadOnlyList<Sys_Employee_TypeDto>>(typies);


                SelectList employeeList = null;
                if (data != null && data.Count > 0)
                {
                    employeeList = new SelectList(
              data.Select(x => new { Value = x.id, Text = x.Type_Name }),
              "Value",
              "Text"
          );
                }
                return Ok(employeeList);
                return Ok(new List<Sys_Employee_TypeDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
