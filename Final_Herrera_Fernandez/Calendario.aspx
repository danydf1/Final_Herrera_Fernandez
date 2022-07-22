<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calendario.aspx.cs" Inherits="Final_Herrera_Fernandez.Calendario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <asp:Calendar ID="CalendarioEvento" Width="80%" CssClass="table table-striped table-bordered" runat="server" BorderStyle="Outset" CaptionAlign="Top" ClientIDMode="Predictable" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" Height="302px" VisibleDate="2022-06-18"></asp:Calendar>
            </div>
            <div class="col-12 d-flex justify-content-center">
                <div class="scrolling-table-container">
                    <asp:GridView ID="GVCalendario" runat="server" BackColor="White" BorderColor="#99CCFF" CaptionAlign="Top" HorizontalAlign="Center" EmptyDataText="No hay eventos para este dia" GridLines="Vertical" Enabled="False">
                        <AlternatingRowStyle BorderColor="#0099FF" />
                        <EmptyDataRowStyle BackColor="#FF9900" />
                        <HeaderStyle BackColor="#80FF00" HorizontalAlign="Center" />
                        <RowStyle BorderStyle="Solid" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
