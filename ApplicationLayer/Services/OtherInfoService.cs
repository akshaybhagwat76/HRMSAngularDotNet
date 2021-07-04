using System;
using System.Collections.Generic;
using System.Text;
using ApplicationLayer.Interfaces;
using Core.Entities;
using Persistent;
using Persistent.Repository;

namespace ApplicationLayer.Services
{
    public class OtherInfoService:BaseService<TBL_HR_EMPLOYEE_DETAILS>, IOtherInfoService
    {
        private readonly FreelencerDBContext _dBContext;
        public OtherInfoService(IRepository<TBL_HR_EMPLOYEE_DETAILS> repo, FreelencerDBContext dBContext) : base(repo)
        {
            _dBContext = dBContext;
        }
    }
}
