using System;
using System.Collections.Generic;
using System.Text;
using ApplicationLayer.Interfaces;
using Core.Entities;
using Persistent;
using Persistent.Repository;

namespace ApplicationLayer.Services
{
    public class NomineeService : BaseService<TBL_HR_EMPLOYEE_NOMINEE_DETAILS>, INomineeService
    {
        private readonly FreelencerDBContext _dBContext;
        public NomineeService(IRepository<TBL_HR_EMPLOYEE_NOMINEE_DETAILS> repo, FreelencerDBContext dBContext) : base(repo)
        {
            _dBContext = dBContext;
        }
    }
}
