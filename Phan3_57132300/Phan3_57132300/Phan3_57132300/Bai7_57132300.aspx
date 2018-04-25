<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai7_57132300.aspx.cs" Inherits="Phan3_57132300.Bai7_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="4" style="text-align: center">ĐĂNG KÝ THÔNG TIN CÁ NHÂN&nbsp;</td>
            </tr>
            <tr>
                <td>Mã sinh viên</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="149px"></asp:TextBox>
                </td>
                <td>Họ tên</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="148px"></asp:TextBox>
                </td>
                <td>Giới tính</td>
                <td>
                    <asp:RadioButton ID="rdNam" runat="server" GroupName="GioiTinh" Text="NAM" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdNu" runat="server" GroupName="GioiTinh" Text="NỮ" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
