using Core.Entities;
using Microsoft.EntityFrameworkCore;
using System.Reflection;
namespace Infrastructure.Data
{
    public class StoreContext : DbContext
    {
        public StoreContext(DbContextOptions<StoreContext> options) : base(options)
        {
        }
        public DbSet<TBL_HR_EMPLOYEE_EDUCATION_DETAILS> HR_EMPLOYEE_EDUCATION_DETAILs { get; set; }
        public DbSet<Tbl_HR_Employee> Tbl_HR_Employee { get; set; }
        public DbSet<sys_Compnays> sys_Compnays { get; set; }
        public DbSet<Sys_Branch> sys_Branches { get; set; }
        public DbSet<Sys_DESIGNATION> sys_DESIGNATIONs { get; set; }
        public DbSet<Sys_COUNTRY> sys_COUNTRies { get; set; }
        public DbSet<Sys_DEPARTMENT> sys_DEPARTMENTs { get; set; }
        public DbSet<Sys_WorkingStatus> Sys_WorkingStatus { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
        }
    }
}
