using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JobPortal.Models
{
    public class JobApplicationModel
    {
        public int JobApplicationId { get; set; }
        public int JobseekerId { get; set; }
        public int EmployeeId { get; set; }
        public int JobId { get; set; }
        public DateTime AppliedDate { get; set; }
    }
}