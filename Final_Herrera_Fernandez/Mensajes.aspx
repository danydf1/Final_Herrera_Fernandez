<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Mensajes.aspx.cs" Inherits="Final_Herrera_Fernandez.Mensajes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-4">
                <table class="table boxText">
                    <thead>
                        <tr>
                            <th scope="col">Contacto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%foreach (Dominio.Usuario item in usuarios)
                            {%>
                        <tr>
                            <td><%= item.Nombre %>  <%= item.Apellido %></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
            <div class="col-8">
                <div class="boxText"></div>

                <div class="d-flex flex-row-reverse bd-highlight mt-1">
                    <asp:Button runat="server" CssClass="btn btn-primary ms-2" Text="Enviar" />
                    <asp:TextBox CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
