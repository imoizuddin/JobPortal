using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    class BALUserDetails
    {
        int? _jobseekerId;
        public int? JobseekerId
        {
            get { return _jobseekerId; }
            set
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    throw new ArgumentNullException("industry id cannot be null");
                }
                else
                {
                    _jobseekerId = value;
                }
            }

        }

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

        public string Experience { get; set; }

    }
}
