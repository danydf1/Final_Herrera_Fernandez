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
         <br />
    <br />
    <h1 style="text-align:center">Envie Sus Correos desde esta pagina</h1>
        <div class="row">
            <div class="col-sm-2"></div>
          
            <div class="col-sm-3">
               
               
                <textarea ID="mensaje" runat="server" class="form-control" type="text" placeholder="Ingresa tu mensaje" cols="20" rows="4"></textarea>
            </div>
             <div class="col-sm-3">
                  <asp:TextBox id="asunto" runat="server" type="text" class="form-control" PlaceHolder="Asunto"  ></asp:TextBox>
               
               
            </div>
            <div class="col-sm-3">
                 <asp:TextBox  id="para" runat="server" type="email" class="form-control" PlaceHolder="Correo destinatario"  ></asp:TextBox>
               
                
            </div>
        </div>
          <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
                <asp:Button ID="Button" runat="server" CssClass="btn btn-success" Text="Enviar Correo" OnClick="Button_Click" />
                
            </div>
    </div>
</asp:Content>
