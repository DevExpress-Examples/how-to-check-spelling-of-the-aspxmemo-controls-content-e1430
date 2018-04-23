Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub

	Protected Sub ASPxCheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs)
		ASPxSpellChecker1.SettingsSpelling.IgnoreUpperCaseWords = ASPxCheckBox1.Checked

	End Sub
	Protected Sub ASPxSpellChecker1_Init(ByVal sender As Object, ByVal e As EventArgs)
		ASPxCheckBox1.Checked = ASPxSpellChecker1.SettingsSpelling.IgnoreUpperCaseWords

	End Sub

	Protected Sub ASPxCheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs)
		ASPxSpellChecker1.ClientSideEvents.CheckCompleteFormShowing = "function(s, e) {e.cancel = " & ASPxCheckBox2.Checked.ToString().ToLower() & ";} "
	End Sub
	Protected Sub ASPxButton2_Click(ByVal sender As Object, ByVal e As EventArgs)
		ASPxMemo1.Text = "The SPELL CHECKKER is a proufing tool that can check spelling of words inany application"

	End Sub
End Class
