using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessAccessLayer
{
    class BALIndustry
    {
        int? _industryId;
        public int? IndustryId
        {
            get { return _industryId; }
            set
            {
                if (string.IsNullOrEmpty(value.ToString()))
                {
                    throw new ArgumentNullException("industry id cannot be null");
                }
                else
                {
                    _industryId = value;
                }
            }

        }

        public string IndustryTypw { get; set; }
        public string Role { get; set; }
    }
}
