using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Specifications
{
    public class EducationSpecification: BaseSpecification<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>
    {
        public EducationSpecification(int id) : base(x => x.Id == id)
        {
        }
    }
}
