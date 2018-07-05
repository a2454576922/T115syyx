 

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
	public partial class DepartmentBll : BaseBll<Department>,IDepartmentBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.DepartmentDal;
        }
    }	
	public partial class MenuInfoBll : BaseBll<MenuInfo>,IMenuInfoBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.MenuInfoDal;
        }
    }	
	public partial class RoleBll : BaseBll<Role>,IRoleBll
    {
        public override void SetCurrentDal()
        {
            this.currentDal = this.DbSession.RoleDal;
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