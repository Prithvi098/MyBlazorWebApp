using System.Linq.Expressions;

namespace MyBlazorApp.Common
{
    public static class QueryableExtensions
    {
        public static IOrderedQueryable<T> OrderByDynamic<T>(this IQueryable<T> query, string propertyName, bool ascending)
        {
            var parameter = Expression.Parameter(typeof(T), "x");
            var property = Expression.PropertyOrField(parameter, propertyName);
            var lambda = Expression.Lambda(property, parameter);
            string method = ascending ? "OrderBy" : "OrderByDescending";
            var types = new Type[] { query.ElementType, property.Type };
            var mce = Expression.Call(typeof(Queryable), method, types, query.Expression, lambda);
            return (IOrderedQueryable<T>)query.Provider.CreateQuery<T>(mce);
        }
    }


}
