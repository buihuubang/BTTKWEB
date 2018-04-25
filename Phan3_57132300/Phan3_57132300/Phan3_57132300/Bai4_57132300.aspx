<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai4_57132300.aspx.cs" Inherits="Phan3_57132300.Bai4_57132300" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 158px">
    
        VÍ DỤ VÒNG LẶP<br />
        Nhập vào số nguyên n:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNhap" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btndoWhile" runat="server" OnClick="btndoWhile_Click" Text="DoWhile ...Loop" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnwhileLoop" runat="server" Text="Do...WhileLoop" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndoUntil" runat="server" Text="DoUntil..Loop" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLoopUntil" runat="server" Text="Do...LoopUntil" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnForNext" runat="server" Text="For Next" />
        <br />
        <br />
        Tổng các số nguyên từ 1 đến
        <asp:Label ID="lbelN" runat="server" Text="n "></asp:Label>
        :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtKQ" runat="server" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="215px" />
    
    </div>
    </form>
</body>
</html>
