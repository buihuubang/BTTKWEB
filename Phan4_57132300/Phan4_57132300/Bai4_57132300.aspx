<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai4_57132300.aspx.cs" Inherits="Phan4_57132300.Bai4_57132300" %>

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
                    <td colspan="4" style="text-align: center">THÔNG TIN TIN TỨC</td>
                </tr>
                <tr>
                    <td>Mã tin tức</td>
                    <td>
                        <asp:TextBox ID="txtMaTin" runat="server"></asp:TextBox>
                    </td>
                    <td>Tiêu đề</td>
                    <td>
                        <asp:TextBox ID="txtTieuDe" runat="server" Height="35px" Width="133px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ngày đăng</td>
                    <td>
                        <asp:TextBox ID="txtNgayDang" runat="server"></asp:TextBox>
                    </td>
                    <td>Ảnh minh họa</td>
                    <td>
                        <asp:FileUpload ID="AnhUp" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Loại tin tức</td>
                    <td>
                        <asp:DropDownList ID="DropTT" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="THÊM" />
&nbsp;&nbsp;
                        <asp:Button ID="btnXoa" runat="server" OnClick="btnXoa_Click" Text="XÓA" />
&nbsp;&nbsp;
                        <asp:Button ID="btnSua" runat="server" OnClick="btnSua_Click" Text="SỬA" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center">DANH SÁCH TIN TỨC HIỆN CÓ</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridTable" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="936px">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
