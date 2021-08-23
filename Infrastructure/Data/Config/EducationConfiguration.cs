using Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
namespace Infrastructure.Data.Config
{
    public class EducationConfiguration : IEntityTypeConfiguration<TBL_HR_EMPLOYEE_EDUCATION_DETAILS>
    {
        public void Configure(EntityTypeBuilder<TBL_HR_EMPLOYEE_EDUCATION_DETAILS> builder)
        {
            builder.Property(p => p.Id).IsRequired();
            builder.Property(p => p.Employee_Id).IsRequired();
        }
    }
}
