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
    public partial class InsertProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            try
            {
                Gridview_InsertList.Visible = true;
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter("insert into ProductMaster(ProductId,ProductName)values(@ProductId,@ProductName);", con);
                da1.SelectCommand.CommandType = CommandType.Text;
                //da1.SelectCommand.Parameters.AddWithValue("@CategoryName", TxtCateId.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductId", txtProdID.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductName", txtProdName.Text);
                da1.SelectCommand.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "popUp", "simpleAlert('Success','Data Inserted','success')", true);
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