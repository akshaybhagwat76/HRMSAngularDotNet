using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace API.Helpers
{
    //public static class Common
    //{
    //    /// <summary>
    //    /// Filters a <see cref="IQueryable{T}"/> by given predicate if given condition is true.
    //    /// </summary>
    //    /// <param name="query">Queryable to apply filtering</param>
    //    /// <param name="condition">A boolean value</param>
    //    /// <param name="predicate">Predicate to filter the query</param>
    //    /// <returns>Filtered or not filtered query based on <paramref name="condition"/></returns>
    //    public static IQueryable<T> WhereIf<T>(this IQueryable<T> query, bool condition, Expression<Func<T, bool>> predicate)
    //    {
    //        return condition
    //            ? query.Where(predicate)
    //            : query;
    //    }

    //    /// <summary>
    //    /// Filters a <see cref="IQueryable{T}"/> by given predicate if given condition is true.
    //    /// </summary>
    //    /// <param name="query">Queryable to apply filtering</param>
    //    /// <param name="condition">A boolean value</param>
    //    /// <param name="predicate">Predicate to filter the query</param>
    //    /// <returns>Filtered or not filtered query based on <paramref name="condition"/></returns>
    //    public static IQueryable<T> WhereIf<T>(this IQueryable<T> query, bool condition, Expression<Func<T, int, bool>> predicate)
    //    {
    //        return condition
    //            ? query.Where(predicate)
    //            : query;
    //    }

    //    public static IEnumerable<TSource> WhereIf<TSource>(this IEnumerable<TSource> source, bool condition, Func<TSource, bool> predicate)
    //    {
    //        if (condition)
    //            return source.Where(predicate);
    //        else
    //            return source;
    //    }

    //    public static IEnumerable<TSource> WhereIf<TSource>(this IEnumerable<TSource> source, bool condition, Func<TSource, int, bool> predicate)
    //    {
    //        if (condition)
    //            return source.Where(predicate);
    //        else
    //            return source;
    //    }
    //}
}
