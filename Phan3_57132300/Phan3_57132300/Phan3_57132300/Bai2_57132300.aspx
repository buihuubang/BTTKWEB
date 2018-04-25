<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai2_57132300.aspx.cs" Inherits="Phan3_57132300.Bai2_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 147px">
    
        Giải phương bậc 1(ax +b = 0)<br />
        <br />
        <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
        x +
        <asp:TextBox ID="txtB" runat="server"></asp:TextBox>
        =0<br />
        <br />
        <asp:Button ID="btnTinh" runat="server" OnClick="btnTinh_Click" Text="Tính" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLamLai" runat="server" Text="Làm lại" />
        <br />
        <br />
        Kết Qủa: <asp:TextBox ID="txtKQ" runat="server"></asp:TextBox>
        <br />
    
    </div>
    </form>
</body>
</html>
