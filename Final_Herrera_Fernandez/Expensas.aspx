<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Expensas.aspx.cs" Inherits="Final_Herrera_Fernandez.Expensas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" >
        <div>
            <table class="table">
                <tr>
                    <td><asp:Label runat="server" Text="ID"></asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txtId"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label runat="server" Text="Imagen"></asp:Label></td>
                    <td><asp:FileUpload runat="server" ID="Archivo" /></td>
                </tr>
                <tr>
                    <td  align="center" colspan="2"><asp:Button runat="server" ID="btnGuardar" OnClick="btnGuardar_Click" csclass="btn btn-primary" Text="Guardar"/></td>
                </tr>
            </table>
            
        </div>
     </div>
</asp:Content>
