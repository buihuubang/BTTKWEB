<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai1_57132300.aspx.cs" Inherits="Phan3_57132300.Bai1_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 241px">
    
        Nhập số a:<asp:TextBox ID="txtA" runat="server" Height="16px"></asp:TextBox>
        <br />
        Nhập số b:<asp:TextBox ID="txtB" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnCong" runat="server" OnClick="btnCong_Click" Text="Cộng" />
        <asp:Button ID="btnTru" runat="server" OnClick="btnTru_Click" Text="Trừ" />
        <asp:Button ID="btnNhan" runat="server" OnClick="btnNhan_Click" Text="Nhân" />
        <asp:Button ID="btnChia" runat="server" OnClick="btnChia_Click" Text="Chia" />
        <asp:Button ID="btnLamLai" runat="server" OnClick="btnLamLai_Click" Text="Làm lại" />
        <br />
        Kết quả:<asp:TextBox ID="txtKQ" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
