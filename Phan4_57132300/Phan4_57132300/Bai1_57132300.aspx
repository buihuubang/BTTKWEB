<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai1_57132300.aspx.cs" Inherits="Phan4_57132300.Bai1_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            height: 26px;
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
                        <asp:GridView ID="GridViewTab" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="925px" AllowPaging="True" AutoGenerateSelectButton="True" PageSize="5">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">CẬP NHẬT THÔNG TIN ĐIỆN THOẠI</td>
                </tr>
                <tr>
                    <td>Mã điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Tên điện thoại</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>Đơn giá</td>
                    <td>
                        <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
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
                    <td>Loại điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtLoai" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnAdd" runat="server" Text="Thêm" Width="100px" OnClick="btnAdd_Click" />
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="btnFix" runat="server" Text="Sửa" Width="127px" OnClick="btnFix_Click" />
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="btnDel" runat="server" Text="Xóa" Width="92px" OnClick="btnDel_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
