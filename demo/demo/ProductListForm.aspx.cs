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
using System.Drawing;

namespace demo
{
    public partial class ProductListForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnselect_Click(object sender, EventArgs e)
        {
            try
            {
                Gridview_ProductList.Visible = true;
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter("select * from ProductList where CategoryId=@CategoryId; ", con);
                da1.SelectCommand.CommandType = CommandType.Text;
                //da1.SelectCommand.Parameters.AddWithValue("@CategoryName", TxtCateId.Text);
                da1.SelectCommand.Parameters.AddWithValue("@CategoryId", txtcate.Text);
                DataTable dtt = new DataTable();
                da1.Fill(dtt);
                Gridview_ProductList.DataSource = dtt;
                Gridview_ProductList.DataBind();
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

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                Gridview_ProductList.Visible = true;
                LBLRESULT.Visible = true;
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter("insert into ProductList(categoryId,categoryName,ProductlistId,ProductName)values(@categoryId,@categoryName,@ProductlistId,@ProductName);", con);
                da1.SelectCommand.CommandType = CommandType.Text;
                da1.SelectCommand.Parameters.AddWithValue("@categoryId", txtcate.Text);
                da1.SelectCommand.Parameters.AddWithValue("@categoryName", txtcatName.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductlistId", txtProduct.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductName", txtproductName.Text);
                int a=da1.SelectCommand.ExecuteNonQuery();
                DataTable dtt = new DataTable();
                da1.Fill(dtt);
                Gridview_ProductList.DataSource = dtt;
                Gridview_ProductList.DataBind(); 
                
                LBLRESULT.Text = "DATA INSERTED";
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "popUp", "simpleAlert('Success','Data Inserted','success')", true);
                con.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                Gridview_ProductList.Visible = true;
                LBLRESULT.Visible = true;
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter("update ProductList set CategoryName=@CategoryName,ProductlistId=@ProductlistId,ProductName=@ProductName where categoryId=@categoryId;", con);
                da1.SelectCommand.CommandType = CommandType.Text;
                //da1.SelectCommand.Parameters.AddWithValue("@CategoryName", TxtCateId.Text);
                da1.SelectCommand.CommandType = CommandType.Text;
                da1.SelectCommand.Parameters.AddWithValue("@categoryId", txtcate.Text);
                da1.SelectCommand.Parameters.AddWithValue("@categoryName", txtcatName.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductlistId", txtProduct.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductName", txtproductName.Text);
                int a = da1.SelectCommand.ExecuteNonQuery();
                DataTable dtt = new DataTable();
                da1.Fill(dtt);
                Gridview_ProductList.DataSource = dtt;
                Gridview_ProductList.DataBind();
                LBLRESULT.Text = "DATA UPDATED";
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "popUp", "simpleAlert('Success','Data Updated','success')", true);
                con.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                Gridview_ProductList.Visible = true;
                LBLRESULT.Visible = true;
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter("delete ProductList where categoryId=@categoryId and CategoryName=@CategoryName", con);
                da1.SelectCommand.CommandType = CommandType.Text;
                da1.SelectCommand.CommandType = CommandType.Text;
                da1.SelectCommand.Parameters.AddWithValue("@categoryId", txtcate.Text);
                da1.SelectCommand.Parameters.AddWithValue("@categoryName", txtcatName.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductlistId", txtProduct.Text);
                da1.SelectCommand.Parameters.AddWithValue("@ProductName", txtproductName.Text);
                int a = da1.SelectCommand.ExecuteNonQuery();
                LBLRESULT.Text = "DATA DELETED";
                DataTable dtt = new DataTable();
                da1.Fill(dtt);
                Gridview_ProductList.DataSource = dtt;
                Gridview_ProductList.DataBind();

                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "popUp", "simpleAlert('Success','Data Deleted','success')", true);
                con.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}