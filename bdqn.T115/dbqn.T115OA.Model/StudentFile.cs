//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class StudentFile
    {
        public StudentFile()
        {
            this.Family = new HashSet<Family>();
            this.ResultInfo = new HashSet<ResultInfo>();
        }
    
        public int Id { get; set; }
        public int payId { get; set; }
        public int ClassManagementId { get; set; }
        public int educationId { get; set; }
        public string Registrationtime { get; set; }
        public string Name { get; set; }
        public string Namepinyin { get; set; }
        public string Sex { get; set; }
        public System.DateTime Dateofbirth { get; set; }
        public string Nation { get; set; }
        public string IDnumber { get; set; }
        public string IDaddress { get; set; }
        public string XAddress { get; set; }
        public bool ISaccommodation { get; set; }
        public string PhoNumber { get; set; }
        public double Sourcesofcost { get; set; }
        public string QQ { get; set; }
        public string Guardianname { get; set; }
        public string GuardianPhone { get; set; }
        public string Wechat { get; set; }
        public string Interest { get; set; }
        public string Speciality { get; set; }
        public string OWEP { get; set; }
        public string Other { get; set; }
        public string Programming { get; set; }
        public string Intrnet { get; set; }
        public string correation { get; set; }
        public string operation { get; set; }
        public string Readingstate { get; set; }
        public bool manage { get; set; }
        public string school { get; set; }
        public string inclass { get; set; }
        public System.DateTime TimeGroad { get; set; }
        public bool recommend { get; set; }
        public string remark { get; set; }
        public int DelFlag { get; set; }
        public int SubBy { get; set; }
        public System.DateTime subTiem { get; set; }
        public string entranceState { get; set; }
    
        public virtual ICollection<Family> Family { get; set; }
        public virtual pay pay { get; set; }
        public virtual ClassManagement ClassManagement { get; set; }
        public virtual education education { get; set; }
        public virtual ICollection<ResultInfo> ResultInfo { get; set; }
    }
}
