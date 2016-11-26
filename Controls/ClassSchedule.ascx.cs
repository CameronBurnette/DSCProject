using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ClassSchedule : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitTermButton_Click1(object sender, EventArgs e)
    {
        TermLabel.Visible = false;
        PartTermLabel.Visible = true;
    }

    protected void SubmitPartTermButton_Click(object sender, EventArgs e)
    {
        PostLabel.Visible = true;
        PartTermLabel.Visible = false;
    }
}