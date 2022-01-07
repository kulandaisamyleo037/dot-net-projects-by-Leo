<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     
    <table class="nav-justified">
        <tr>
            <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #003399">Employee Details</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Employee ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" BackColor="Yellow" Font-Size="Medium" ForeColor="#0000CC" OnClick="Button4_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Employee Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Designation"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px">
                    <asp:ListItem>Web developer</asp:ListItem>
                    <asp:ListItem>CSS developer</asp:ListItem>
                    <asp:ListItem>Java Developer</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Age"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Contact"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Joined Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" Font-Size="Medium" ForeColor="#0000CC" OnClick="Button1_Click" Text="Insert" />
&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Yellow" Font-Size="Medium" ForeColor="#0000CC" OnClick="Button2_Click" Text="Update" />
&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="Yellow" Font-Size="Medium" ForeColor="#0000CC" OnClick="Button3_Click" OnClientClick="return confirm('Are Your Sure ?');" Text="Delete" />
&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="Yellow" Font-Size="Medium" ForeColor="#0000CC" OnClick="Button5_Click" Text="TOTAL List" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="726px">
                    <HeaderStyle BackColor="#3399FF" ForeColor="#FFFFCC" />
                </asp:GridView>
            </td>
        </tr>
    </table>

     
</asp:Content>
