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
    public partial class selectProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            try
            {
                Gridview_SelectProductList.Visible = true;
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter("select * from ProductMaster where ProductId=@ProductId; ", con);
                da1.SelectCommand.CommandType = CommandType.Text;
                //da1.SelectCommand.Parameters.AddWithValue("@CategoryName", TxtCateId.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductId", txtProduct.Text);
                DataTable dtt = new DataTable();
                da1.Fill(dtt);
                Gridview_SelectProductList.DataSource = dtt;
                Gridview_SelectProductList.DataBind();
                if (dtt.Rows.Count <= 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "popUp", "ErrorAlert('Data Not Found')", true);

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "popUp", "simpleAlert('Success','Data Found','success')", true);

                }
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