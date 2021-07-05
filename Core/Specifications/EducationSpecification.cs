using Core.Entities;
namespace Core.Specifications
{
    public class EducationSpecification: BaseSpecification<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>
    {
        public EducationSpecification(int id) : base(x => x.Id == id)
        {
        }
    }
}
