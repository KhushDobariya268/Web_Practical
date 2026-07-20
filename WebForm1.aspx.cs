using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Practical
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void XmlDataSource1_Transforming(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            AdRotator1.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //String file_name = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            //FileUpload1.SaveAs(Server.MapPath("~/img/" + file_name));
            //Label7.Text = "File uploaded successfully!";

            if (FileUpload1.HasFile)
            {

                String path = Server.MapPath("~/img/");
                String filename = FileUpload1.FileName;
                FileUpload1.SaveAs(path + filename);
                Label7.Text = "File uploaded successfully!";
            }
            else
            {
                Label7.Text = "Please select a file to upload.";
            }

        }
    }
}