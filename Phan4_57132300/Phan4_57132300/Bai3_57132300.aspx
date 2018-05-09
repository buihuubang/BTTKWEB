<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai3_57132300.aspx.cs" Inherits="Phan4_57132300.Bai3_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="3" style="text-align: center">DANH SÁCH ĐIỆN THOẠI HIỆN CÓ</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridTable" runat="server" Width="933px">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="3" style="text-align: center">CẬP NHẬT THÔNG TIN ĐIỆN THOẠI</td>
                </tr>
                <tr>
                    <td>Mã điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Tên điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Ảnh điện thoại</td>
                    <td>
                        <asp:FileUpload ID="txtUpload" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Phụ kiện kèm theo</td>
                    <td>
                        <asp:TextBox ID="txtPK" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Đơn giá</td>
                    <td>
                        <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Loại điện thoại</td>
                    <td>
                        <asp:DropDownList ID="dropLoai" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="btnThem" runat="server" Text="THÊM" />
&nbsp;&nbsp;
                        <asp:Button ID="btnSua" runat="server" Text="SỬA" />
&nbsp;&nbsp;
                        <asp:Button ID="btnXoa" runat="server" Text="XÓA" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
