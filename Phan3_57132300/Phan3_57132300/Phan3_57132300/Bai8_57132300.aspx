<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai8_57132300.aspx.cs" Inherits="Phan3_57132300.Bai8_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
            width: 669px;
        }
        .auto-style5 {
            height: 26px;
            width: 669px;
        }
        .auto-style6 {
            width: 669px;
        }
        .auto-style7 {
            height: 23px;
            width: 669px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="3" style="text-align: center">ĐĂNG KÝ KHÁCH HÀNG&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Họ tên khách hàng</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Chưa nhập họ tên khách hàng" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Mật khẩu</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMK" ErrorMessage="Chưa nhập mật khẩu" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>Mật khẩu xác nhận lại</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMK2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMK" ControlToValidate="txtMK2" ErrorMessage="Mật khẩu không giống nhau" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Thu nhập(Triệu đồng)</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtThuThap" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtThuThap" ErrorMessage="Phải nhập từ 1 đến 100" MaximumValue="100" MinimumValue="1" ForeColor="Red" SetFocusOnError="True">*</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Địa chỉ email</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Địa chỉ email nhập sai" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Số chẵn bạn thích</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSoChan" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtSoChan" ErrorMessage="Phải nhập 1 số chẵn" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red" SetFocusOnError="True">*</asp:CustomValidator>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="ĐĂNG KÝ" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="TongHopLoi" runat="server" ForeColor="Red" HeaderText="LỖI" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblThongTin" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
