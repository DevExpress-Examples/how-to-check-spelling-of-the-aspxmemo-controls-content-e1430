<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dxwsc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<table>
            <tr>
                <td>
                    <dxe:ASPxButton ID="ASPxButton2" runat="server" OnClick="ASPxButton2_Click" Text="Load the Text">
                    </dxe:ASPxButton>
                </td>
                <td>
        <dxe:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" EnableClientSideAPI="True"
            Text="Check the Text">
            <ClientSideEvents Click="function(s, e) {spellChecker.Check();}" />
        </dxe:ASPxButton>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;
        <br />
        <dxe:ASPxMemo ID="ASPxMemo1" runat="server" Height="200px" Width="500px" ClientInstanceName="memoEdit">
        </dxe:ASPxMemo>
        &nbsp;<br />
        <dxe:ASPxCheckBox ID="ASPxCheckBox1" runat="server" Text="IgnoreUpperCaseWords" AutoPostBack="True" OnCheckedChanged="ASPxCheckBox1_CheckedChanged">
        </dxe:ASPxCheckBox>
        <dxe:ASPxCheckBox ID="ASPxCheckBox2" runat="server" AutoPostBack="True" Text="Do not show Check Complete Message" ClientInstanceName="chkComplete" OnCheckedChanged="ASPxCheckBox2_CheckedChanged">
        </dxe:ASPxCheckBox>
        &nbsp;&nbsp;
        <br />
    
    </div>
        <dxwsc:ASPxSpellChecker ID="ASPxSpellChecker1" runat="server" CheckedElementID="ASPxMemo1" ClientInstanceName="spellChecker" Culture="English (United States)" OnInit="ASPxSpellChecker1_Init">
            <Dictionaries>
                <dxwsc:ASPxSpellCheckerOpenOfficeDictionary CacheKey="myUSdictionary" Culture="English (United States)"
                    DictionaryPath="~/Dictionaries/en_US.dic" GrammarPath="~/Dictionaries/en_US.aff" />
                <dxwsc:ASPxSpellCheckerCustomDictionary CacheKey="myCustomDic" Culture="English (United States)"
                    DictionaryPath="~/Dictionaries/Custom_US.dic" EncodingName="US-ASCII" />
            </Dictionaries>
        </dxwsc:ASPxSpellChecker>
        &nbsp;
    </form>
</body>
</html>
