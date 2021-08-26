using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    class BALSkillsModel
    {
        int? _skillId;
        public int? SkillId
        {
            get { return _skillId; }
            set
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    throw new ArgumentNullException("industry id cannot be null");
                }
                else
                {
                    _skillId = value;
                }
            }

        }
        public string Name { get; set; }
        public string Proficiency { get; set; }
    }
}
