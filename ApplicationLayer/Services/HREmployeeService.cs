using System;
using System.Collections.Generic;
using System.Text;
using ApplicationLayer.Interfaces;
using Core.Entities;
using Persistent;
using Persistent.Repository;

namespace ApplicationLayer.Services
{
    public class HREmployeeService:BaseService<Tbl_HR_Employee>, IHREmployeeService
    {
        private readonly FreelencerDBContext _dBContext;
        public HREmployeeService(IRepository<Tbl_HR_Employee> repo, FreelencerDBContext dBContext) :base(repo)           
        {
            _dBContext = dBContext;
        }
    }
}
