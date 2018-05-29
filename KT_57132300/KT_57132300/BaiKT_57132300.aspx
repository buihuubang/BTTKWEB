<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BaiKT_57132300.aspx.cs" Inherits="KT_57132300.BaiKT_57132300" %>

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
                    <td colspan="4" style="text-align: center">THÔNG TIN SẢN PHẦM</td>
                </tr>
                <tr>
                    <td>Mã sản phẩm</td>
                    <td>
                        <asp:TextBox ID="txtMaSP" runat="server"></asp:TextBox>
                    </td>
                    <td>Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Đơn giá</td>
                    <td>
                        <asp:TextBox ID="txtDonGia" runat="server"></asp:TextBox>
                    </td>
                    <td>Xuất xứ </td>
                    <td>
                        <asp:RadioButton ID="rdTrongNuoc" runat="server" Text="Trong nước" ValidationGroup="group1" />
&nbsp;<asp:RadioButton ID="rdNgoaiNuoc" runat="server" Text="NgoạiNhập" ValidationGroup="group1" />
                    </td>
                </tr>
                <tr>
                    <td>Đơn vị tính</td>
                    <td>
                        <asp:TextBox ID="txtDVT" runat="server"></asp:TextBox>
                    </td>
                    <td>Ngày nhập</td>
                    <td>
                        <asp:TextBox ID="txtNgayNhap" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ảnh minh hoạ</td>
                    <td>
                        <asp:FileUpload ID="FileAnh" runat="server" />
                    </td>
                    <td>Loại sản phẩm</td>
                    <td>
                        <asp:DropDownList ID="ListSP" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Mô tả sản phẩm</td>
                    <td>
                        <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="THÊM" />
&nbsp;
                        <asp:Button ID="btnSua" runat="server" OnClick="btnSua_Click" Text="SỬA" />
&nbsp;
                        <asp:Button ID="btnXoa" runat="server" OnClick="btnXoa_Click" Text="XOÁ" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center">DANH SÁCH SẢN PHẨM HIỆN CÓ</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="TbleSP" runat="server" AllowPaging="True" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5">
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
            </table>
        </div>
    </form>
</body>
</html>
