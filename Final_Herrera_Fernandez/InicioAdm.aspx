<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="InicioAdm.aspx.cs" Inherits="Final_Herrera_Fernandez.InicioAdm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <body class="body-register">
  <section class="form-register">
        <h4>Formulario </h4>
        <h3>Fecha *</h3>
        <asp:TextBox ID="Fecha" class="form-control" TextMode="Date" type="text" placeholder="Ingrese su numero" aria-label="Ingrese su numero" runat="server"></asp:TextBox>
        <h3> Descripcion*</h3>
        <asp:TextBox ID="TxtDescripcion" class="form-control" type="text" placeholder="Ingrese Descripcion" aria-label=" Ingrese Descripcion " runat="server"></asp:TextBox>
        <h3>Url*</h3>
        <asp:TextBox ID="TxtImagenUrl" class="form-control" type="text" placeholder="Ingrese Url Imagen" aria-label="Ingrese UrlImagen" runat="server"></asp:TextBox>
      <h5> Campos Obligatorios(*)</h5>  
      
        <h3>Categoria</h3>
        
        <asp:DropDownList runat="server" ID="ddlCategoria" CssClass="form-control-sm"></asp:DropDownList>
        <br />
        <asp:Button ID="BtnAgregar" Text="Agregar" CssClass="botons" AutoPosback="true" OnClick="BtnAgregar_Click" runat="server" type="submit" />
 </section>
         </body>


</asp:Content>
