using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;

namespace demo
{
    public partial class update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            try
            {
                Gridview_UpdateList.Visible = true;
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter("update CategoryMaster set CategoryName=@CategoryName where CategoryId=@CategoryId;", con);
                da1.SelectCommand.CommandType = CommandType.Text;
                //da1.SelectCommand.Parameters.AddWithValue("@CategoryName", TxtCateId.Text);
                da1.SelectCommand.Parameters.AddWithValue("@CategoryId", TxtCustId.Text);
                da1.SelectCommand.Parameters.AddWithValue("@CategoryName", TxtName.Text);
                da1.SelectCommand.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "popUp", "simpleAlert('Success','Data Updated','success')", true);
                con.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}