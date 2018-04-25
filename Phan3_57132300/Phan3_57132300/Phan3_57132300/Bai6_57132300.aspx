<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai6_57132300.aspx.cs" Inherits="Phan3_57132300.Bai6_57132300" %>

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
                <td colspan="4" style="text-align: center">NHẬP THÔNG TIN HỌC TẬP</td>
            </tr>
            <tr>
                <td>Mã sinh viên</td>
                <td>
                    <asp:TextBox ID="txtMaSV" runat="server"></asp:TextBox>
                </td>
                <td>Họ tên</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Môn học</td>
                <td>
                    <asp:TextBox ID="txtMonHoc" runat="server"></asp:TextBox>
                </td>
                <td>Tỷ lệ kiểm tra</td>
                <td>
                    <asp:TextBox ID="txtKT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Điểm kiểm tra</td>
                <td>
                    <asp:TextBox ID="txtDKT" runat="server"></asp:TextBox>
                </td>
                <td>Điểm thi</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="txtDThi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnTinh" runat="server" OnClick="btnTinh_Click" Text="Tính" Width="72px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLai" runat="server" Text="Làm lại" />
                </td>
                <td>&nbsp;</td>
                <td style="margin-left: 40px">&nbsp;</td>
            </tr>
            <tr>
                <td>Điểm tổng kết</td>
                <td>
                    <asp:TextBox ID="txtTongKet" runat="server"></asp:TextBox>
                </td>
                <td>Xếp loại</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="txtXL" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: center">
                    <asp:Label ID="LABEL" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
