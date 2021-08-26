using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JobPortal.Models
{
    public class JobModel
    {
        public int JobId { get; set; }
        public int IndustryId { get; set; }
        public string JobName { get; set; }
        public string Description { get; set; }
        public string Location { get; set; }
        public string CompanyName { get; set; }
        public int Salary { get; set; }
        public int EmployeeId { get; set; }
        public DateTime JobPostedDate { get; set; }
    }
}