using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    public class BALEducationDetails
    {
        public string Qualification { get; set; }
        public string Specialization { get; set; }
        public string University { get; set; }
        public string CourseType { get; set; }
        public DateTime PassingYear { get; set; }

        int? _jobseekerId;
        public int? JobseekerId
        {
            get { return _jobseekerId; }
            set
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    throw new ArgumentNullException("jobseeker id cannot be null");
                }
                else
                {
                    _jobseekerId = value;
                }
            }

        }
    }
}
