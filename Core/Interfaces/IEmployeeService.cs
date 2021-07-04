using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Core.Interfaces
{
    public interface IEmployeeService
    {
        Task<Tbl_HR_Employee> GetEmployeeByIdAsync(int id);
        Task<IReadOnlyList<Tbl_HR_Employee>> GetEmployeesAsyn();
        Task<Tbl_HR_Employee> CreateEmployees(Tbl_HR_Employee tbl_HR_Employee);
    }
}
