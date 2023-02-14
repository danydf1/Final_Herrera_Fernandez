<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="ServiciosRecomendadosAdmin.aspx.cs" Inherits="Final_Herrera_Fernandez.ServiciosRecomendadosAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-8 ">
                <h2 class="mb-5">Servicios Recomendados por la administracion</h2>
            </div>
            <div class="col-12">
                <asp:GridView ID="Lista" CssClass="table table-primary" runat="server"></asp:GridView>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Servicio</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Contacto</th>
                            <th scope="col">Horarios</th>
                            <th scope="col">Site</th>
                            <th scope="col">Ubicacion</th>

                             <th> <asp:Button  CssClass="btn btn-primary mx-2" ID="BtnAgregar" Text=" Agregar Servicios" runat="server"  /> </th>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rep" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("NombreContacto") %></td>
                                   <td><%#Eval("Servicio")%></td>
                                    <td><%#Eval("Telefono")%></td>
                                    <td><%#Eval("Horarios")%></td>
                                    <td><asp:HyperLink ID="HyperLink1" ImageHeight="20px" ImageWidth="20px" ImageUrl="https://cdn-icons-png.flaticon.com/128/3449/3449750.png" href=<%#Eval("Sitio")%> runat="server"></asp:HyperLink></td>
                                    <td><asp:HyperLink ID="HyperLink2"  ImageHeight="20px" ImageWidth="20px"  ImageUrl="https://cdn-icons-png.flaticon.com/512/447/447031.png" href=<%#Eval("Ubicacion")%> runat="server"></asp:HyperLink></td>                                  
                                    <td><a  href="ModificarServicio.aspx?id=<%#Eval("id") %>" Class="btn btn-secondary" >Modificar</a></td>
                                    <td><asp:Button runat="server" ID="btnDelete" CommandArgument='<%#Eval("id") %>' Text="Eliminar" CssClass="btn btn-danger" Oncommand="btnDelete_Command" /></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</asp:Content>
