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
        <div class="container text-center">
            <div class="row">
                <div class="col-12 mb-5">
                    <h2>Formulario Registro</h2>
                </div>
                
                <div class="col-12">
                    <asp:TextBox ID="TxtNombreUsuario" class="form-control mb-2" type="text" placeholder="Ingrese Nombre de usuario" aria-label="Ingrese Nombre de Usuario" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TxtApellido" class="form-control mb-2" type="text" placeholder="Ingrese su Apellido" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TxtNombre" class="form-control mb-2" type="text" placeholder="Ingrese su Nombre" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TxtEmail" class="form-control mb-2" type="email" placeholder="Ingrese su Email" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TxtPass" class="form-control mb-2" MaxLength="8" type="password" placeholder="Ingrese su Contraseña 8 caracteres max" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                    
                    <asp:TextBox ID="FechaNac" runat="server" Type="Date" placeholder="Ingrese su Fecha Nacimiento" aria-label="Ingrese su Fecha de Nacimiento" class="form-control"></asp:TextBox>
                </div>
                <div class="col-12">
                    <div class="form-check mt-3">
                        <asp:CheckBox runat="server" CssClass="form-check-input" ID="check"/>
                        <label class="form-check-label" for="check">
                            Estoy de acuerdo con Terminos y Condiciones
                        </label>
                    </div>
                    <asp:Button ID="BtnAgregar" Text="Registrar" OnClick="BtnAgregar_Click" runat="server" CssClass="btn btn-primary mt-3" type="submit" />
                    <br />
                    <a href="Login.aspx" >¿Ya tengo Cuenta? </a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
