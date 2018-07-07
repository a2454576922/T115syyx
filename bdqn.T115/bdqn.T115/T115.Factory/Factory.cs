 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.Factory
{

    using DalFactory;
    using IDal;
    using Common;
	
    public partial class Factory:AbsFactory
    {
		public override IActionInfoDal CreateActionInfoDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IActionInfoDal)Kits.CreateObj(nspace, "ActionInfoDal");
        }
		public override IClassManagementDal CreateClassManagementDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IClassManagementDal)Kits.CreateObj(nspace, "ClassManagementDal");
        }
		public override IConsultDal CreateConsultDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IConsultDal)Kits.CreateObj(nspace, "ConsultDal");
        }
		public override IDepartmentDal CreateDepartmentDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IDepartmentDal)Kits.CreateObj(nspace, "DepartmentDal");
        }
		public override IeducationDal CreateeducationDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IeducationDal)Kits.CreateObj(nspace, "educationDal");
        }
		public override IFamilyDal CreateFamilyDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IFamilyDal)Kits.CreateObj(nspace, "FamilyDal");
        }
		public override IGradeDal CreateGradeDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IGradeDal)Kits.CreateObj(nspace, "GradeDal");
        }
		public override IMenuInfoDal CreateMenuInfoDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IMenuInfoDal)Kits.CreateObj(nspace, "MenuInfoDal");
        }
		public override IpayDal CreatepayDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IpayDal)Kits.CreateObj(nspace, "payDal");
        }
		public override IResultDal CreateResultDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IResultDal)Kits.CreateObj(nspace, "ResultDal");
        }
		public override IResultInfoDal CreateResultInfoDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IResultInfoDal)Kits.CreateObj(nspace, "ResultInfoDal");
        }
		public override IRoleDal CreateRoleDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IRoleDal)Kits.CreateObj(nspace, "RoleDal");
        }
		public override ISourceDal CreateSourceDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (ISourceDal)Kits.CreateObj(nspace, "SourceDal");
        }
		public override IStudentFileDal CreateStudentFileDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IStudentFileDal)Kits.CreateObj(nspace, "StudentFileDal");
        }
		public override ISubjectDal CreateSubjectDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (ISubjectDal)Kits.CreateObj(nspace, "SubjectDal");
        }
		public override IUserDal CreateUserDal()
        {
            string nspace = Kits.GetAppSettingsValue("dalFactory");
            return (IUserDal)Kits.CreateObj(nspace, "UserDal");
        }
	}
	
}