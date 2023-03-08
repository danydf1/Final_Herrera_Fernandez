<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ModificarServicio.aspx.cs" Inherits="Final_Herrera_Fernandez.ModificarServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container text-center">
            <div class="row">
                <div class="col-12 mb-5">
                    <h2>Actualizar Servicios Recomendados</h2>
                </div>
                
                <div class="col-12">
                    <asp:Label ID="LblServicios" runat="server" Text="Servicio" ></asp:Label>
                    <asp:DropDownList ID="DDLServicio" class="form-control mb-2" runat="server"  AutoPostBack="False" DataTextField="Descripcion" DataValueField="Id"  ></asp:DropDownList>     
                    <asp:Label ID="LblNombre" runat="server" Text="Nombre Contacto" ></asp:Label>
                    <asp:TextBox runat="server" ID="TxtNombre" class="form-control mb-2" type="text"></asp:TextBox>
                    <asp:Label ID="LblContacto" runat="server" Text="Contacto" ></asp:Label>
                    <asp:TextBox ID="TxtTelefono" class="form-control mb-2" type="text"  runat="server"></asp:TextBox>
                    <asp:Label ID="LblHorarios" runat="server" Text="Horarios  de atencion" ></asp:Label>
                    <asp:TextBox ID="TxtHorarios" class="form-control mb-2" type="text"  runat="server"></asp:TextBox>
                    <div class="col-12">
                    <asp:Label ID="LblSitio" runat="server" Text="Sitio Web (copiar vinculo)" ></asp:Label>  
                    <asp:Button runat="server"  CssClass="btn-secondary" Text="Validar vinculo"  />
                   </div>
                    <asp:TextBox ID="TxtSitioweb" class="form-control mb-2"    runat="server" ></asp:TextBox>
                </div>
                <div class="col-12">
                     <asp:Button runat="server" CssClass="btn btn-danger" Text="Cancelar" ID="btnCancelar" OnClick="btnCancelar_Click"/>
                
                     <asp:Button runat="server"  CssClass="btn btn-primary" Text="Modificar" ID="btnAceptar" OnClick="btnAceptar_Click" />
                </div>
            </div>
        </div>
</asp:Content>
