﻿//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace dbqn.T115OA.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DataModelContainer : DbContext
    {
        public DataModelContainer()
            : base("name=DataModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<ActionInfo> ActionInfo { get; set; }
        public DbSet<Department> Department { get; set; }
        public DbSet<Role> Role { get; set; }
        public DbSet<MenuInfo> MenuInfo { get; set; }
        public DbSet<User> User { get; set; }
        public DbSet<Consult> Consult { get; set; }
        public DbSet<education> education { get; set; }
        public DbSet<Family> Family { get; set; }
        public DbSet<pay> pay { get; set; }
        public DbSet<Source> Source { get; set; }
        public DbSet<StudentFile> StudentFile { get; set; }
        public DbSet<ClassManagement> ClassManagement { get; set; }
        public DbSet<Result> Result { get; set; }
        public DbSet<ResultInfo> ResultInfo { get; set; }
        public DbSet<Subject> Subject { get; set; }
        public DbSet<Grade> Grade { get; set; }
        public DbSet<AttendanceInfo> AttendanceInfo { get; set; }
        public DbSet<SalaryInfo> SalaryInfo { get; set; }
        public DbSet<PostInfo> PostInfo { get; set; }
    }
}
