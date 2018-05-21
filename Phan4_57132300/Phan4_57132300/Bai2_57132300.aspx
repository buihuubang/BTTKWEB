<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai2_57132300.aspx.cs" Inherits="Phan4_57132300.Bai2_57132300" %>

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
                    <td colspan="3" style="text-align: center">DANH SÁCH CÁC ĐIỆN THOẠI HIỆN CÓ</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridInfor" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="926px">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">CẬP NHẬT THÔNG TIN SÁCH</td>
                </tr>
                <tr>
                    <td>Mã sách</td>
                    <td>
                        <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Tên sách</td>
                    <td>
                        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Ảnh sách</td>
                    <td>
                        <asp:FileUpload ID="upAnh" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Tác giả</td>
                    <td>
                        <asp:TextBox ID="txtTacGia" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Nhà xuất bản</td>
                    <td>
                        <asp:TextBox ID="txtNXB" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Loại sách</td>
                    <td>
                        <asp:DropDownList ID="dropLoai" runat="server" Width="211px" OnSelectedIndexChanged="dropLoai_SelectedIndexChanged">
                        </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="THÊM" />
&nbsp;&nbsp;
                        <asp:Button ID="btnXoa" runat="server" OnClick="btnXoa_Click" Text="XÓA" />
&nbsp;&nbsp;
                        <asp:Button ID="btnSua" runat="server" OnClick="btnSua_Click" Text="SỬA" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
