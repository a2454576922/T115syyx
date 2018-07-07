 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace T115.Bll
{
    using dbqn.T115OA.Model;
    using IBll;
	public partial class ActionInfoBll : BaseBll<ActionInfo>,IActionInfoBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.ActionInfoDal;
        }
    }	
	public partial class ClassManagementBll : BaseBll<ClassManagement>,IClassManagementBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.ClassManagementDal;
        }
    }	
	public partial class ConsultBll : BaseBll<Consult>,IConsultBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.ConsultDal;
        }
    }	
	public partial class DepartmentBll : BaseBll<Department>,IDepartmentBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.DepartmentDal;
        }
    }	
	public partial class educationBll : BaseBll<education>,IeducationBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.educationDal;
        }
    }	
	public partial class FamilyBll : BaseBll<Family>,IFamilyBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.FamilyDal;
        }
    }	
	public partial class GradeBll : BaseBll<Grade>,IGradeBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.GradeDal;
        }
    }	
	public partial class MenuInfoBll : BaseBll<MenuInfo>,IMenuInfoBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.MenuInfoDal;
        }
    }	
	public partial class payBll : BaseBll<pay>,IpayBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.payDal;
        }
    }	
	public partial class ResultBll : BaseBll<Result>,IResultBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.ResultDal;
        }
    }	
	public partial class ResultInfoBll : BaseBll<ResultInfo>,IResultInfoBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.ResultInfoDal;
        }
    }	
	public partial class RoleBll : BaseBll<Role>,IRoleBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.RoleDal;
        }
    }	
	public partial class SourceBll : BaseBll<Source>,ISourceBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.SourceDal;
        }
    }	
	public partial class StudentFileBll : BaseBll<StudentFile>,IStudentFileBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.StudentFileDal;
        }
    }	
	public partial class SubjectBll : BaseBll<Subject>,ISubjectBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.SubjectDal;
        }
    }	
	public partial class UserBll : BaseBll<User>,IUserBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.UserDal;
        }
    }	
	
}