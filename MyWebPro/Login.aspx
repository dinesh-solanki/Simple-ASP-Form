<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="MyWebPro.Login" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 341px">
<script type="text/javascript">
    function DeleteItem() {
        if (confirm("Are you sure you want to delete ...?")) {
            return true;
        }
        return false;
    }
</script>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" />
        <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Height="305px">
            <Items>
                <dx:LayoutItem Caption="Name" Name="Name">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="txtName0" runat="server">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Occupation" Name="Occupation">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="txtOcc0" runat="server">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Password" Name="Password">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxTextBox ID="txtPwd0" runat="server" Password="True">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Gender" Name="Gender">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxRadioButtonList ID="radGender0" runat="server" RepeatDirection="Horizontal">
                                <Items>
                                    <dx:ListEditItem Text="Male" Value="Male" />
                                    <dx:ListEditItem Text="Female" Value="Female" />
                                    <dx:ListEditItem Text="Other" Value="Other" />
                                </Items>
                            </dx:ASPxRadioButtonList>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Course" Name="Course">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <asp:DropDownList ID="ddlCourse" runat="server">
                                <asp:ListItem>BCA</asp:ListItem>
                                <asp:ListItem>BCOM</asp:ListItem>
                                <asp:ListItem>BBA</asp:ListItem>
                            </asp:DropDownList>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="DateOf Birth" Name="DOB">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxDateEdit ID="DOB0" runat="server" EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                            </dx:ASPxDateEdit>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Hobbies" Name="Hobbies">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxCheckBoxList ID="chkHobbies0" runat="server">
                                <Items>
                                    <dx:ListEditItem Text="Writing" Value="Writing" />
                                    <dx:ListEditItem Text="Singing" Value="Singing" />
                                    <dx:ListEditItem Text="Sketching" Value="Sketching" />
                                </Items>
                            </dx:ASPxCheckBoxList>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="" Name="Submit">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer runat="server">
                            <dx:ASPxButton ID="ASPxFormLayout1_E9" runat="server" Text="Update"></dx:ASPxButton>
                            <dx:ASPxButton ID="ASPxFormLayout1_E10" runat="server" Text="Delete" >
                                <ClientSideEvents Click="function(s, e) {
     e.processOnServer = confirm('Do you wish to delete this record?');          
}" />
                            </dx:ASPxButton>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </dx:ASPxFormLayout>
       
    </form>
  
</body>
</html>
