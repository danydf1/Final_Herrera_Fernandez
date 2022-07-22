<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ModificarServicio.aspx.cs" Inherits="Final_Herrera_Fernandez.ModificarServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container text-center">
            <div class="row">
                <div class="col-12 mb-5">
                    <h2>Actualizar servicio</h2>
                </div>
                
                <div class="col-12">
                    <asp:TextBox ID="TxtServicio" class="form-control mb-2" type="text" placeholder="Servicio" aria-label="Ingrese Nombre de Usuario" runat="server"></asp:TextBox>
                    <asp:TextBox runat="server" ID="TxtNombre" class="form-control mb-2" type="text" placeholder="Nombre"  ></asp:TextBox>
                    <asp:TextBox ID="TxtTelefono" class="form-control mb-2" type="text" placeholder="Telefono" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TxtHorarios" class="form-control mb-2" type="text" placeholder="lu-vi de 8 a 12 hs" aria-label="Ingrese Nombre" runat="server"></asp:TextBox>
                </div>
                <div class="col-12">
                     <asp:Button runat="server" CssClass="btn btn-danger" Text="Cancelar" ID="btnCancelar" OnClick="btnCancelar_Click"/>
                
                     <asp:Button runat="server"  CssClass="btn btn-primary" Text="Aceptar" ID="btnAceptar" OnClick="btnAceptar_Click" />
                </div>
            </div>
        </div>
</asp:Content>
