﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Servicios Recomendados.aspx.cs" Inherits="Final_Herrera_Fernandez.Servicios_Recomendados" %>
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
                <asp:GridView CssClass="table table-primary" runat="server" ID="Lista"></asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
