using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Helpers
{
    public static class ExtensionMethods
    {
        public static IEnumerable<TSource> WhereIf<TSource>(
     this IEnumerable<TSource> source, bool condition,
     Func<TSource, bool> predicate)
        {
            if (condition)
                return source.Where(predicate);
            else
                return source;
        }
    }
}
