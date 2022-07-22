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
                <asp:GridView ID="Lista" CssClass="table table-primary" runat="server"></asp:GridView>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Email</th>
                            <th scope="col">Depto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rep" runat="server">
                            <ItemTemplate>
                                <tr>
                                        <td><%#Eval("Nombre") %></td>
                                        <td><%#Eval("Apellido")%></td>
                                        <td><%#Eval("Email")%></td>
                                        <td><%#Eval("Departamento.Descripcion")%></td>
                                        <td><asp:Button Text="Modificar" ID="btnModificar" CssClass="btn btn-primary" runat="server" /></td>
                                        <td><asp:Button runat="server" ID="btnDelete" CommandArgument='<%#Eval("id") %>' Text="Eliminar" CssClass="btn btn-danger" Oncommand="btnDelete_Command" /></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
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
                                <asp:TextBox ID="TxtNombreUsuario" class="form-control mb-2" type="text" placeholder="Ingrese Nombre de usuario" aria-label="Ingrese Nombre de Usuario" runat="server"></asp:TextBox>
                                <asp:TextBox ID="TxtApellido" class="form-control mb-2" type="text" placeholder="Ingrese su Apellido" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                                <asp:TextBox ID="TxtNombre" class="form-control mb-2" type="text" placeholder="Ingrese su Nombre" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                                <asp:TextBox ID="TxtEmail" class="form-control mb-2" type="email" placeholder="Ingrese su Email" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                                <asp:TextBox ID="TxtPass" class="form-control mb-2" MaxLength="8" type="password" placeholder="Ingrese su Contraseña 8 caracteres max" runat="server" CssClass="form-control mb-2"></asp:TextBox>
                                <asp:Label ID="Lbl1" runat="server" class="form-control mb-2" Text="Ingrese su Fecha Nac"></asp:Label>
                                <asp:TextBox ID="FechaNac" runat="server" Type="Date" class="form-control"></asp:TextBox>
                            </div>
                            <div class="col-6">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="RadioAdmin" runat="server">
                                <label class="form-control mb-2" for="flexRadioDefault1" id="LblAdmin" runat="server">
                                    Administrador
                                </label>
                            </div>
                            <div class="col-6">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="RadioVecino" runat="server" checked />
                                <label class="form-control mb-2" for="flexRadioDefault2" id="LblVecino" runat="server">
                                    Vecino
                                </label>
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
