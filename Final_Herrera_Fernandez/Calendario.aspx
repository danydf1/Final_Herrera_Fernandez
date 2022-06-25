<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calendario.aspx.cs" Inherits="Final_Herrera_Fernandez.Calendario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    

     <span class="d-block p-2 bg-primary text-white">
         <div class="mx-auto" style="width: 200px;">
     <asp:Calendar ID="CalendarioEvento" runat="server"  BorderStyle="Outset" CaptionAlign="Top" ClientIDMode="Predictable" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" Height="302px" Width="250px" VisibleDate="2022-06-18">
                        <DayHeaderStyle BorderStyle="Double" />
                        <DayStyle HorizontalAlign="Center" />
                        <NextPrevStyle BorderStyle="None" />
                        <TitleStyle BackColor="#80FF00" HorizontalAlign="Center" />
                        <TodayDayStyle Font-Overline="False" />
                        <WeekendDayStyle HorizontalAlign="Center" Wrap="True" />
                    </asp:Calendar>
  </div>

     </span>
<span class="d-block p-2 bg-dark text-white">
    <div class="mx-auto" style="width: 200px;">
            <div class="scrolling-table-container">
                       <asp:GridView ID="GvCalendario"  runat="server" BackColor="Silver" BorderColor="#99CCFF" CaptionAlign="Top" HorizontalAlign="Center" EmptyDataText="No hay eventos para este dia"  GridLines="Vertical" Enabled="False">
                           <AlternatingRowStyle BorderColor="#0099FF" />
                           <EditRowStyle ForeColor="Black" />
                           <EmptyDataRowStyle BackColor="#FF9900" />
                           <HeaderStyle BackColor="#80FF00" HorizontalAlign="Center" />
                           <RowStyle BorderStyle="Solid" />     
                       </asp:GridView>
                        </div>
            </div>
  </span>
 
 

</asp:Content>
