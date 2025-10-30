using Microsoft.Data.SqlClient;
using MyBlazorApp.Data;
using MyBlazorApp.Models;
using System.Data;

namespace MyBlazorApp.Common
{
    public class DataContext
    {
        public readonly string ConnectionString;
        private readonly EMSContext eMSContext;

        public DataContext(IConfiguration config, EMSContext context)
        {
            ConnectionString = config.GetConnectionString("EMSContext");
            eMSContext = context;
        }

        public DataTable DTExcecuteSP(String spName, params SqlParameter[] parameters)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand(spName, con);
                    if (parameters != null && parameters.Length > 0)
                        cmd.Parameters.AddRange(parameters);

                    cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.CommandTimeout = int.Parse(BaysideSports.ConnectionTimeOut);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                }
                return dt;
            }
            catch (Exception ex)
            {
                ErrorLog logger = new ErrorLog();
                logger.ErroMsg = Convert.ToString(ex.Message);
                logger.Error = spName;
                logger.ErrorDate = DateTime.Now;
                eMSContext.ErrorLogs.Add(logger);
                eMSContext.SaveChanges();
                throw;
            }
        }

        public DataSet DSExcecuteSP(String spName, params SqlParameter[] parameters)
        {
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand(spName, con);
                    if (parameters != null && parameters.Length > 0)
                        cmd.Parameters.AddRange(parameters);


                    cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.CommandTimeout = int.Parse(BaysideSports.ConnectionTimeOut);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(ds);
                }
                return ds;
            }
            catch (Exception ex)
            {
                ErrorLog logger = new ErrorLog();
                logger.ErroMsg = Convert.ToString(ex.Message);
                logger.Error = spName;
                logger.ErrorDate = DateTime.Now;
                eMSContext.ErrorLogs.Add(logger);
                eMSContext.SaveChanges();
                throw;
            }
        }

        public int ExcecuteNonQuery(String spName, params SqlParameter[] parameters)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(spName, con))
                    {
                        con.Open();
                        if (parameters != null && parameters.Length > 0)
                        {
                            cmd.Parameters.AddRange(parameters);
                        }
                        cmd.CommandType = CommandType.StoredProcedure;
                        var res = cmd.ExecuteNonQuery();
                        return res;
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                ErrorLog logger = new ErrorLog
                {
                    ErroMsg = ex.Message,
                    Error = spName,
                    ErrorDate = DateTime.Now
                };
                eMSContext.ErrorLogs.Add(logger);
                eMSContext.SaveChanges();
                throw; // or rethrow the exception based on your error handling strategy
            }
        }

        public int ExecuteScalar(string spName, params SqlParameter[] parameters)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(spName, con))
                    {
                        con.Open();
                        if (parameters != null && parameters.Length > 0)
                        {
                            cmd.Parameters.AddRange(parameters);
                        }
                        cmd.CommandType = CommandType.StoredProcedure;
                        return Convert.ToInt32(cmd.ExecuteScalar());
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                ErrorLog logger = new ErrorLog
                {
                    ErroMsg = ex.Message,
                    Error = spName,
                    ErrorDate = DateTime.Now
                };
                eMSContext.ErrorLogs.Add(logger);
                eMSContext.SaveChanges();
                throw; // or rethrow the exception based on your error handling strategy
            }
        }
    }
}
