using System;
using System.Linq;
using System.Linq.Expressions;

namespace API.Helpers
{
    public static class Helpers
    {
        public static string RemovePostFix(this string s, string suffix)
        {
            if (s.EndsWith(suffix))
            {
                return s.Substring(0, s.Length - suffix.Length);
            }
            else
            {
                return s;
            }
        }
       
    }
}
