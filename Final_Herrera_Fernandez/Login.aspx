<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final_Herrera_Fernandez.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin:auto">
            <div class="row text-center">
                <div class="col-12">
                   <asp:TextBox placeHolder="Usuario o mail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-12">
                  <asp:TextBox placeHolder="contraseña" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-12">
                   <asp:Button Text="Entrar"  runat="server" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
