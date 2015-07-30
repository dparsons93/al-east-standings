using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using assignment_two;

namespace assignment_two
{
    public partial class standings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //calling a function to populate grid
            GetTeams();

        }

        protected void GetTeams()
        {
            //connect and get list of teams
            using (DefaultConnection db = new DefaultConnection())
            {
                var teams = from t in db.Teams
                            select t;

                //binding the teams query to the grid
                grdTeams.DataSource = teams.ToList();
                grdTeams.DataBind();
            }
        }

        protected void grdTeams_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //look for the id to be deleted
            Int32 TeamID = Convert.ToInt32(grdTeams.DataKeys[e.RowIndex].Values["TeamID"]);

            //connect to db
            using (DefaultConnection db = new DefaultConnection())
            {
                Team team = (from t in db.Teams
                             where t.TeamID == TeamID
                             select t).FirstOrDefault();
                //delete record
                db.Teams.Remove(team);
                db.SaveChanges();

                GetTeams();
            }
        }
    }
}