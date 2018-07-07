 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.IDbSession
{

    using IDal;
	
    public partial interface IDbSession
    {
		IActionInfoDal ActionInfoDal { get; }

		IClassManagementDal ClassManagementDal { get; }

		IConsultDal ConsultDal { get; }

		IDepartmentDal DepartmentDal { get; }

		IeducationDal educationDal { get; }

		IFamilyDal FamilyDal { get; }

		IGradeDal GradeDal { get; }

		IMenuInfoDal MenuInfoDal { get; }

		IpayDal payDal { get; }

		IResultDal ResultDal { get; }

		IResultInfoDal ResultInfoDal { get; }

		IRoleDal RoleDal { get; }

		ISourceDal SourceDal { get; }

		IStudentFileDal StudentFileDal { get; }

		ISubjectDal SubjectDal { get; }

		IUserDal UserDal { get; }

	}
	
}