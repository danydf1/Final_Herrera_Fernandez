<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABMUsuarios.aspx.cs" Inherits="Final_Herrera_Fernandez.ABMUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-6">
                <asp:TextBox id="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox id="txtNombreUsuario" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="col-6">
                <asp:TextBox id="txtApellido" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
</asp:Content>
