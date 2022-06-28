<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calendario.aspx.cs" Inherits="Final_Herrera_Fernandez.Calendario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:Calendar ID="CalendarioEvento" runat="server" BorderStyle="Outset" CaptionAlign="Top" ClientIDMode="Predictable" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" Height="302px" Width="250px" VisibleDate="2022-06-18"></asp:Calendar>

    <div class="scrolling-table-container">
        <asp:GridView ID="GVCalendario" runat="server" BackColor="White" BorderColor="#99CCFF" CaptionAlign="Top" HorizontalAlign="Center" EmptyDataText="No hay eventos para este dia" GridLines="Vertical" Enabled="False">
            <AlternatingRowStyle BorderColor="#0099FF" />
            <EmptyDataRowStyle BackColor="#FF9900" />
            <HeaderStyle BackColor="#80FF00" HorizontalAlign="Center" />
            <RowStyle BorderStyle="Solid" />
        </asp:GridView>

    </div>





</asp:Content>
