<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Expensas.aspx.cs" Inherits="Final_Herrera_Fernandez.Expensas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" >
        
        <div class="contenedor">
            <div class="row">
                <h1>Guardar, visualizar y lista imagenes en SQL Server</h1>
            </div>
            <div class="row">
                <div class="column left">Imagen:</div>
                <div class="column right"><asp:FileUpload ID="fuImagen" runat="server" /></div>
            </div>
            <div class="row">
                <asp:Button CssClass="btn btn-primary" ID="btnGuardar" OnClick="btnGuardar_Click" OnClientClick="return ValidarFormulario();" runat="server" Text="Guardar en SQL Server" />
            </div>
        </div>
        <div>
            <div class="row">
                <asp:Label CssClass="ok" ID="lblMensajeOk" runat="server"></asp:Label>
                <asp:Label CssClass="error" ID="lblMensajeError" runat="server"></asp:Label>
            </div>
            <div class="row"><br /></div>
        </div>
        <div class="contenedor">
            <asp:GridView CssClass="table-custom" ID="gvListaImagenes" AutoGenerateColumns="false" runat="server">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:HyperLinkField HeaderText="Url" Text="Ver" DataNavigateUrlFields="visorImagen" Target="_blank" />
                </Columns>
            </asp:GridView>
        </div>

     </div>
</asp:Content>
