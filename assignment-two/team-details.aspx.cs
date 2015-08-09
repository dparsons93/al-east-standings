using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using assignment_two;


namespace assignment_two
{
    public partial class team_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if loading for the first time check for a url
            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty(Request.QueryString["TeamID"]))
                {
                    GetTeam();
                }
            }
        }

        protected void GetTeam()
        {
            //look up selected team and fill data in the form
            using (DefaultConnection db = new DefaultConnection())
            {
                Int32 TeamID = Convert.ToInt32(Request.QueryString["TeamID"]);
                
                //look up team
                Team team = (from t in db.Teams where t.TeamID == TeamID select t).FirstOrDefault();

                //fill data to form
                txtTeam.Text = team.TeamName;
                txtWins.Text = team.Wins.ToString();
                txtLosses.Text = team.Losses.ToString();
                txtRunsScored.Text = team.RunsScored.ToString();
                txtRunsAgainst.Text = team.RunsAgainst.ToString();
                txtExpectedWinPercentage.Text = team.ExpectedWinningPercentage.ToString();
                txtRelativePowerIndex.Text = team.RelativePowerIndex.ToString();
                

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (DefaultConnection db = new DefaultConnection())
            {
                //create new team
                Team team = new Team();

                //check for url
                if(!String.IsNullOrEmpty(Request.QueryString["TeamID"]))
                {
                    Int32 TeamID = Convert.ToInt32(Request.QueryString["TeamID"]);

                    //look up team
                    team = (from t in db.Teams where t.TeamID == TeamID select t).FirstOrDefault();
                }

                    //fill properties of new team
                    team.TeamName = txtTeam.Text;
                    team.Wins = Convert.ToInt32(txtWins.Text);
                    team.Losses = Convert.ToInt32(txtLosses.Text);
                    team.RunsScored = Convert.ToInt32(txtRunsScored.Text);
                    team.RunsAgainst = Convert.ToInt32(txtRunsAgainst.Text);
                    team.ExpectedWinningPercentage = Convert.ToDecimal(txtExpectedWinPercentage.Text);
                    team.RelativePowerIndex = Convert.ToDecimal(txtRelativePowerIndex.Text);

                    //add if we have no url id
                    if (String.IsNullOrEmpty(Request.QueryString["TeamID"]))
                    {
                        db.Teams.Add(team);
                    }

                    //save the new team
                    db.SaveChanges();

                    //redirect
                    Response.Redirect("standings.aspx");


            }
        }
    }
}
