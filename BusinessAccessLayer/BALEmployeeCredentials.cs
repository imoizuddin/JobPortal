using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    public class BALEmployeeCredentials
    {
        int? _employeeId;
        public int? EmployeeId
        {
            get { return _employeeId; }
            set
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    throw new ArgumentNullException("employee id cannot be null");
                }
                else
                {
                    _employeeId = value;
                }
            }

        }

        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Phone { get; set; }
        public string CompanyName { get; set; }
    }
}
