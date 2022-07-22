<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABMUsuarios.aspx.cs" Inherits="Final_Herrera_Fernandez.ABMUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-12 ">
                <button type="button" class="btn btn-dark my-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    Crear Usuario
                </button>
            </div>
            <div class="col-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Email</th>
                            <th scope="col">DNI</th>
                            <th scope="col">Consorcio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%foreach (var item in ListaUsuarios)
                            {%>
                        <tr>
                            <td><%= item.Nombre %></td>
                            <td><%= item.Apellido %></td>
                            <td><%= item.Email %></td>
                            <td><%= item.Dni %></td>
                            <td>Consorcio</td>
                            <td><asp:button Text="Modificar" ID="btnModificar"  CssClass="btn btn-danger" runat="server"/></td>
                            <td><asp:button Text="Eliminar" ID="btnEliminar" CssClass="btn btn-secondary" runat="server"/></td>
                        </tr>
                        <%} %>
                    </tbody>
                </table>

            </div>

        </div>
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title " id="staticBackdropLabel">Registrar Usuario</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row">

                                <div class="col-12">
                                    <asp:TextBox ID="txtNombreUser" class="form-control mb-2" type="text" placeholder="Nombre de usuario" aria-label="Nombre de Usuario" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="txtNombrePila" class="form-control mb-2" type="text" placeholder="Apellido" aria-label="Nombre" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="txtApellido" class="form-control mb-2" type="text" placeholder="Nombre" aria-label="Nombre" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="txtEmail" class="form-control mb-2" type="email" placeholder="Email" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="txtPass" class="form-control mb-2" MaxLength="8" type="password" placeholder="Ingrese su Contraseña 8 caracteres max" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>

                                    <asp:TextBox ID="FechaNac" runat="server" Type="Date" placeholder="Ingrese su Fecha Nacimiento" aria-label="Ingrese su Fecha de Nacimiento" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <asp:Button ID="BtnAgregar" Text="Registrar" OnClick="BtnAgregar_Click" runat="server" CssClass="btn btn-primary" type="submit" />
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
