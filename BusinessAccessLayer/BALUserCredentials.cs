using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    class BALUserCredentials
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

        public string Name { get; set; }

        public string Email { get; set; }

        public string Password { get; set; }

        public int Phone { get; set; }

        public int TotalExperience { get; set; }

        public string Location { get; set; }

        public int NoticePeriod { get; set; }

        public string CurrentCompany { get; set; }

        public string Designation { get; set; }
    }
}
