using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Security.Cryptography;

namespace assignment_two
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //connect
            using (DefaultConnection db = new DefaultConnection())
            {
                //create user object
                User objU = new User();

                //get salt value for this username
                String Username = txtUsername.Text;

                objU = (from u in db.Users where u.Username == Username select u).FirstOrDefault();

                //find match for username
                if (objU != null)
                {
                    String salt = objU.Salt;

                    //salt and hash plain text pw
                    String password = txtPassword.Text;
                    String pass_and_salt = password + salt;

                    // Create a new instance of the hash crypto service provider.
                    HashAlgorithm hashAlg = new SHA256CryptoServiceProvider();

                    // Convert the data to hash to an array of Bytes.
                    byte[] bytValue = System.Text.Encoding.UTF8.GetBytes(pass_and_salt);

                    // Compute the Hash. This returns an array of Bytes.
                    byte[] bytHash = hashAlg.ComputeHash(bytValue);

                    // Optionally, represent the hash value as a base64-encoded string, 
                    // For example, if you need to display the value or transmit it over a network.
                    string base64 = Convert.ToBase64String(bytHash);

                    //check if the passwords match
                    if (objU.Password == base64)
                    {
             
                        //store identity in session obj
                        Session["UserID"] = objU.UserID;
                        Session["Name"] = objU.Name;

                        //redirect to standings page
                        Response.Redirect("standings.aspx");

                    }
                    else
                    {
                        lblError.Text = "Invalid Login";
                    }
                }
                else
                {
                    lblError.Text = "Invalid Login";
                }

            }
        }
    }
}