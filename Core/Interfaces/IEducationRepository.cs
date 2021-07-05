using Core.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;
namespace Core.Interfaces
{
    public interface IEducationRepository
    {
        Task<TBL_HR_EMPLOYEE_EDUCATION_DETAILS> GetEducationByIdAsync(int id);
        Task<IReadOnlyList<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>> GetEducationsAsyn();
    }
}
