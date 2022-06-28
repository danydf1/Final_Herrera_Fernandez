<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarCuenta.aspx.cs" Inherits="Final_Herrera_Fernandez.WebForm2" %>

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
    <h4>Formulario Registro</h4>
      <asp:TextBox ID="TxtNombre" class="controls" type="text" placeholder="Ingrese su Nombre"  aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
      <asp:TextBox ID="TxtApellido" class="controls" type="text" placeholder="Ingrese su Apellido" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
      <asp:TextBox ID="TxtEmail" class="controls" type="email"  placeholder="Ingrese su Email" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
      <asp:TextBox ID="TxtPass" class="controls" MaxLength="8" type="password" placeholder="Ingrese su Contraseña 8 caracteres max" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
      
    <p>Estoy de acuerdo con <a href="#">Terminos y Condiciones</a></p>
    <asp:Button ID="BtnAgregar" Text="Registrar" onclick="BtnAgregar_Click" runat="server" CssClass="botons" type="submit"/>

    <p><a href="Login.aspx">¿Ya tengo Cuenta?</a></p>
  </section>

</body>
    </form>
</body>
</html>
