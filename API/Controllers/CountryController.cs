using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using API.Dtos;
using AutoMapper;
using Core.Entities;
using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/")]
    [ApiController]
    public class CountryController : BaseApiController
    {
        #region Declarations
        private readonly IMapper _mapper;
        private readonly IUnitOfWork _unitOfWork;
        #endregion

        #region Constructor
        public CountryController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }
        #endregion

        #region Get methods
        [HttpGet("countries")]
        public async Task<ActionResult<List<Sys_COUNTRYDto>>> GetCountryAsync()
        {
            try
            {
                var countries = await _unitOfWork.Repository<Sys_COUNTRY>().ListAllAsync();

                var data = _mapper.Map<IReadOnlyList<Sys_COUNTRY>, IReadOnlyList<Sys_COUNTRYDto>>(countries);

                return Ok(new List<Sys_COUNTRYDto>(data));
            }
            catch (Exception exception)
            {
                return BadRequest(exception.Message.ToString());
            }
        }
        #endregion
    }
}
