<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarCuenta.aspx.cs" Inherits="Final_Herrera_Fernandez.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <title>Tu consorcio</title>
    <link rel="stylesheet" type="text/css" href="index.css" />
</head>
<body>
    <form id="form1" runat="server">


            <div class="container ">
                <div class="row">
                    <div class="col-12">
                        <h4>Formulario Registro</h4>
                    </div>
                    <div class="col-6">
                        <asp:TextBox ID="TxtNombreUsuario" class="controls" type="text" placeholder="Ingrese Nombre de usuario" aria-label="Ingrese Nombre de Usuario" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TxtNombre" class="controls" type="text" placeholder="Ingrese su Nombre" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                   <asp:TextBox ID="TxtEmail" class="controls" type="email" placeholder="Ingrese su Email" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TxtPass" class="controls" MaxLength="8" type="password" placeholder="Ingrese su Contraseña 8 caracteres max" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>

                        </div>
                    <div class="col-6">
                        <asp:TextBox ID="TxtApellido" class="controls" type="text" placeholder="Ingrese su Apellido" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                        <asp:Calendar ID="FechaNac" Width="90px"  CssClass="controls" runat="server"></asp:Calendar>
                    </div>
                    <div class="col-4">
                                            </div>
                    <div class="col-12 text-center">
                        <p>Estoy de acuerdo con <a href="#">Terminos y Condiciones</a></p>
                        <asp:Button ID="BtnAgregar" Text="Registrar" OnClick="BtnAgregar_Click" runat="server" CssClass="botons" type="submit" />

                        <p><a href="Login.aspx">¿Ya tengo Cuenta?</a></p>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
