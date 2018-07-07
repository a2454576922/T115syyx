 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.DbSession
{
    using IDbSession;
    using IDal;
    using System.Data.Entity;
    using DbContextFactory;
	
    public partial class DbSession:IDbSession
    {
		public  IActionInfoDal ActionInfoDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateActionInfoDal();
            }
        }

		public  IClassManagementDal ClassManagementDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateClassManagementDal();
            }
        }

		public  IConsultDal ConsultDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateConsultDal();
            }
        }

		public  IDepartmentDal DepartmentDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateDepartmentDal();
            }
        }

		public  IeducationDal educationDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateeducationDal();
            }
        }

		public  IFamilyDal FamilyDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateFamilyDal();
            }
        }

		public  IGradeDal GradeDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateGradeDal();
            }
        }

		public  IMenuInfoDal MenuInfoDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateMenuInfoDal();
            }
        }

		public  IpayDal payDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreatepayDal();
            }
        }

		public  IResultDal ResultDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateResultDal();
            }
        }

		public  IResultInfoDal ResultInfoDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateResultInfoDal();
            }
        }

		public  IRoleDal RoleDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateRoleDal();
            }
        }

		public  ISourceDal SourceDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateSourceDal();
            }
        }

		public  IStudentFileDal StudentFileDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateStudentFileDal();
            }
        }

		public  ISubjectDal SubjectDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateSubjectDal();
            }
        }

		public  IUserDal UserDal
        {
            get
            {
                return DalFactory.AbsFactory.CreateInstance().CreateUserDal();
            }
        }

	}
}