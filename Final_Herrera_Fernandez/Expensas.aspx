<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Expensas.aspx.cs" Inherits="Final_Herrera_Fernandez.Expensas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
            <div class="row">
                <div class="col-4"></div>
                <div class="col-8 text-center">
                    <h1 class="mb-5">Expensas</h1>
                    <asp:FileUpload ID="fuImagen" CssClass="mb-4" runat="server" />

                <asp:Button CssClass="btn btn-primary " ID="btnGuardar" OnClick="btnGuardar_Click" OnClientClick="return ValidarFormulario();" runat="server" Text="Guardar en SQL Server" />
            </div>
            <div class="col-12 ">
                <asp:GridView CssClass="table table-secondary " ID="gvListaImagenes" AutoGenerateColumns="false" runat="server">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="ID" />
                        <asp:HyperLinkField HeaderText="Url" Text="Ver" DataNavigateUrlFields="visorImagen" Target="_blank" />
                    </Columns>
                </asp:GridView>
            </div>
          </div>

        <div>
            <div class="row">
                <asp:Label CssClass="ok" ID="lblMensajeOk" runat="server"></asp:Label>
                <asp:Label CssClass="error" ID="lblMensajeError" runat="server"></asp:Label>
            </div>
            <div class="row"><br /></div>
        </div>
     </div>
</asp:Content>
