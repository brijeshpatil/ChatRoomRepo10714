using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace ChatRoom
{
    /// <summary>
    /// Summary description for ChatRoomService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ChatRoomService : System.Web.Services.WebService
    {
        ChatService PS = new ChatService();

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public DataSet GetAllTechnologies()
        {
            DataSet ds = new DataSet("Technologies");
            ds.Tables.Add(PS.GetAllTechnologies());
            return ds;
        }

        [WebMethod]
        public DataSet GetAllLocations()
        {
            DataSet ds = new DataSet("Location");
            ds.Tables.Add(PS.GetAllLocation());
            return ds;
        }

        [WebMethod]
        public void RegisterNewFaculty(string FirstName, string LastName, string Gender, DateTime DateOfBirth, string EmailID, string Password, int TechnologyID, int LocationID)
        {
            PS.RegisterFacultyByService(FirstName,
                LastName,
                Gender,
                DateOfBirth,
                EmailID,
                Password,
                TechnologyID,
                LocationID,
                DateTime.Now);
        }
    }
}
