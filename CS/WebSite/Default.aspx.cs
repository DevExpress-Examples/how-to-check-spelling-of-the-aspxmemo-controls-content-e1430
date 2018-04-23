using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ASPxCheckBox1_CheckedChanged(object sender, EventArgs e) {
        ASPxSpellChecker1.SettingsSpelling.IgnoreUpperCaseWords = ASPxCheckBox1.Checked;

    }
    protected void ASPxSpellChecker1_Init(object sender, EventArgs e) {
        ASPxCheckBox1.Checked = ASPxSpellChecker1.SettingsSpelling.IgnoreUpperCaseWords;

    }

    protected void ASPxCheckBox2_CheckedChanged(object sender, EventArgs e) {
        ASPxSpellChecker1.ClientSideEvents.CheckCompleteFormShowing = "function(s, e) {e.cancel = " 
            + ASPxCheckBox2.Checked.ToString().ToLower() + ";} ";
    }
    protected void ASPxButton2_Click(object sender, EventArgs e) {
        ASPxMemo1.Text = "The SPELL CHECKKER is a proufing tool that can check spelling of words inany application";

    }
}
