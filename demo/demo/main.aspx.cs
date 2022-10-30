using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            Response.Redirect("select.aspx");

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insert.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }

        protected void btnSelectProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("selectProduct.aspx");
        }

        protected void btnInsertProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertProduct.aspx");
        }

        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateProduct.aspx");
        }

        protected void btnDeleteProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteProduct.aspx");

        }

        protected void btnProductList_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductListForm.aspx");
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}