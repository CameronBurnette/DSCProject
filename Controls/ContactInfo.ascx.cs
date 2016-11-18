using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ContactInfo : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void MoreInfo_Click(object sender, EventArgs e)
    {
        ContactInfo.Visible = true;
        InfoRequest.Text = "";
    }
    protected void SubmitInfo_Click(object sender, EventArgs e)
    {
        InfoRequest.Text = "Thank you for your interest in Dalton State College.  We will email you information on " + AdmissionType.SelectedValue + " admissions for "
                 + Term.SelectedValue + ".";
        ContactInfo.Visible = false;
    }
}
