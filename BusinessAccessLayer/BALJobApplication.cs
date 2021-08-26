using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    class BALJobApplication
    {
        int? _jobApplicationId;
        public int? JobApplicationId
        {
            get { return _jobApplicationId; }
            set
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    throw new ArgumentNullException("industry id cannot be null");
                }
                else
                {
                    _jobApplicationId = value;
                }
            }

        }
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
        int? _employeeId;
        public int? EmployeeId
        {
            get { return _employeeId; }
            set
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    throw new ArgumentNullException("industry id cannot be null");
                }
                else
                {
                    _employeeId = value;
                }
            }

        }

        int? _jobId;

        public int? JobId
        {
            get { return _jobId; }
            set
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    throw new ArgumentNullException("industry id cannot be null");
                }
                else
                {
                    _jobId = value;
                }
            }

        }
        public DateTime AppliedDate { get; set; }
    }
}
