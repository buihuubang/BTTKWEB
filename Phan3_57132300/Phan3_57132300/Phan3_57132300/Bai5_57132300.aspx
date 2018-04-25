<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai5_57132300.aspx.cs" Inherits="Phan3_57132300.Bai5_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 244px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="text-align: center">TÌM CÁC SỐ NGUYÊN TỐ TỪ 1 ĐẾN N</td>
            </tr>
            <tr>
                <td class="auto-style1">Nhập vào một số nguyên dương n:</td>
                <td>
                    <asp:TextBox ID="txtNhap" runat="server" style="margin-left: 0px" Width="269px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnHienThi" runat="server" OnClick="btnHienThi_Click" style="text-align: center" Text="Hiển thị" Width="212px" />
                </td>
                <td>
                    <asp:Button ID="btnLamLai" runat="server" OnClick="btnLamLai_Click" style="text-align: center" Text="Làm Lại" Width="231px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Kết quả:</td>
                <td>
                    <asp:TextBox ID="txtXuat" runat="server" Width="318px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
