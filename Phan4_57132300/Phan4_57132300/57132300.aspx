<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="57132300.aspx.cs" Inherits="Phan4_57132300._57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaDT" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="924px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="MaDT" HeaderText="MaDT" ReadOnly="True" SortExpression="MaDT" />
                                <asp:BoundField DataField="TenDT" HeaderText="TenDT" SortExpression="TenDT" />
                                <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
                                <asp:BoundField DataField="PhuKien" HeaderText="PhuKien" SortExpression="PhuKien" />
                                <asp:BoundField DataField="Loai" HeaderText="Loai" SortExpression="Loai" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bai1_57132300ConnectionString %>" SelectCommand="SELECT * FROM [DienThoai]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">CẬP NHẬT THÔNG TIN ĐIỆN THOẠI</td>
                </tr>
                <tr>
                    <td class="auto-style1">Mã điện thoại</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>Tên điện thoại </td>
                    <td>
                        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
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
                    <td>Phụ kiện kèm theo</td>
                    <td>
                        <asp:TextBox ID="txtPhuKien" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Loại</td>
                    <td>
                        <asp:TextBox ID="txtLoai" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="THÊM" />
                    </td>
                    <td>
                        <asp:Button ID="btnSua" runat="server" Text="SỬA" OnClick="btnSua_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnXoa" runat="server" Text="XÓA" OnClick="btnXoa_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
