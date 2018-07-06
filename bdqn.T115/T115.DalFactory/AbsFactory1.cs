 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.DalFactory
{

    using T115.IDal;
    using T115.Common;
	
	public abstract partial class AbsFactory
    {
		public abstract IActionInfoDal CreateActionInfoDal();
		public abstract IClassManagementDal CreateClassManagementDal();
		public abstract IConsultDal CreateConsultDal();
		public abstract IDepartmentDal CreateDepartmentDal();
		public abstract IeducationDal CreateeducationDal();
		public abstract IFamilyDal CreateFamilyDal();
		public abstract IMenuInfoDal CreateMenuInfoDal();
		public abstract IpayDal CreatepayDal();
		public abstract IRoleDal CreateRoleDal();
		public abstract ISourceDal CreateSourceDal();
		public abstract IStudentFileDal CreateStudentFileDal();
		public abstract IUserDal CreateUserDal();
	}
}