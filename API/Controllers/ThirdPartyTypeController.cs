﻿using System;
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
    public class ThirdPartyTypeController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public ThirdPartyTypeController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("thirdpartytype")]
        public async Task<ActionResult<List<Sys_ThirdPartyTypeDto>>> GetHigherAuthorityAsync()
        {
            try
            {
                var thirdPartyTypes = await _unitOfWork.Repository<Sys_ThirdPartyType>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_ThirdPartyType>, IReadOnlyList<Sys_ThirdPartyTypeDto>>(thirdPartyTypes);


                SelectList thirdpartyTypeList = null;
                if (data != null && data.Count > 0)
                {
                    thirdpartyTypeList = new SelectList(
              data.Select(x => new { Value = x.Id, Text = x.ThirdPartyType_Name }),
              "Value",
              "Text"
          );
                }
                return Ok(thirdpartyTypeList);
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
