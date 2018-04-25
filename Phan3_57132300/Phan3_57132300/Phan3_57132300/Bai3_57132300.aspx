<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai3_57132300.aspx.cs" Inherits="Phan3_57132300.Bai3_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Giải phương trình bậc 2"></asp:Label>
    <div style="height: 149px">
    
        <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
        x2 +
        <asp:TextBox ID="txtB" runat="server"></asp:TextBox>
        x +
        <asp:TextBox ID="txtC" runat="server"></asp:TextBox>
&nbsp;= 0<br />
        <asp:Button ID="btnTinh" runat="server" OnClick="btnTinh_Click" Text="Tính" />
&nbsp;
        <asp:Button ID="btnLamLai" runat="server" Text="Làm Lại" />
        <br />
        Kết quả :
        <asp:TextBox ID="txtKQ" runat="server" Enabled="False" Height="41px" Width="371px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
