<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final_Herrera_Fernandez.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Tu consorcio</title>
    <link rel="stylesheet" type="text/css" href="index.css" />
   
</head>
<body>
    <form id="form1" runat="server">
        <body class="body-register">
    <section class="form-register">
    <h4>Ingrese su Cuenta</h4> 
    <asp:TextBox ID="TxtEmail" class="controls" type="Mail" placeholder="Ingrese su Email" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
    <asp:TextBox ID="TxtPass" class="controls" type="password" placeholder="Ingrese su Contraseña" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
    <asp:Button ID="BtnAgregar" Text="ENTRAR" onclick="BtnAgregar_Click" runat="server" CssClass="botons" />
    <p><a href="RegistrarCuenta.aspx">Registrarme</a></p>
    </section>
    </body>
    </form>
</body>
</html>
