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
                    <asp:TextBox ID="txtMSSV" runat="server" Width="149px"></asp:TextBox>
                </td>
                <td>Họ tên</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td>
                    <asp:TextBox ID="txtNgaySinh" runat="server" Width="148px"></asp:TextBox>
                </td>
                <td>Giới tính</td>
                <td>
                    <asp:RadioButton ID="rdNam" runat="server" GroupName="GioiTinh" Text="NAM" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdNu" runat="server" GroupName="GioiTinh" Text="NỮ" />
                </td>
            </tr>
            <tr>
                <td>Ngành học</td>
                <td>
                    <asp:DropDownList ID="DropList" runat="server" Height="19px" Width="154px">
                        <asp:ListItem>CÔNG NGHỆ THÔNG TIN</asp:ListItem>
                        <asp:ListItem>CÔNG NGHỆ SINH HỌC</asp:ListItem>
                        <asp:ListItem>NGÔN NGỮ ANH</asp:ListItem>
                        <asp:ListItem>KINH TẾ</asp:ListItem>
                        <asp:ListItem>DU LỊCH</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Sở thích</td>
                <td colspan="3">
                    <asp:CheckBox ID="CheckDL" runat="server" Text="Du Lịch" />
&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckAN" runat="server" Text="Âm Nhạc" />
&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckTT" runat="server" Text="Thể Thao" />
&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckAno" runat="server" Text="Lĩnh vực khác" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="XÁC NHẬN" />
                </td>
                <td>&nbsp;</td>
                <td>Ảnh</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblKQ" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="http://www.hellomytribe.com/wp-content/uploads/2018/03/avatar_user_41_1520269340-120x120.png" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
