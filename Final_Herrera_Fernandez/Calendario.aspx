<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calendario.aspx.cs" Inherits="Final_Herrera_Fernandez.Calendario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    
    
    <div class="MiContenedor">
        <br />
        <table class="w-100">
            <tr>
                <td>&nbsp;</td>               
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;
                    <asp:Calendar ID="CalendarioEvento" runat="server" BackColor="White" BorderStyle="Outset" CaptionAlign="Top" ClientIDMode="Predictable" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" SelectedDate="06/18/2022 20:36:20" Height="302px" Width="250px" VisibleDate="2022-06-18">
                        <DayHeaderStyle BorderStyle="Double" />
                        <DayStyle HorizontalAlign="Center" />
                        <NextPrevStyle BorderStyle="None" />
                        <TitleStyle BackColor="#80FF00" HorizontalAlign="Center" />
                        <TodayDayStyle Font-Overline="False" />
                        <WeekendDayStyle HorizontalAlign="Center" Wrap="True" />
                    </asp:Calendar>
                &nbsp;
                </td>
                <td><div class="scrolling-table-container">
                       <asp:GridView ID="GvCalendario"  runat="server" BackColor="White" BorderColor="#99CCFF" CaptionAlign="Top" HorizontalAlign="Center" EmptyDataText="No hay eventos para este dia"  GridLines="Vertical" Enabled="False">
                           <AlternatingRowStyle BorderColor="#0099FF" />
                           <EmptyDataRowStyle BackColor="#FF9900" />
                           <HeaderStyle BackColor="#80FF00" HorizontalAlign="Center" />
                           <RowStyle BorderStyle="Solid" />     
                       </asp:GridView>
                        </div>     
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      &nbsp<img src="https://www.bing.com/th/id/OGC.5fde3f6cc5a1b666b075228d89609127?pid=1.7&rurl=http%3a%2f%2fpa1.narvii.com%2f6171%2f63aba6103134da1db052a7cb0ac7843cca6379f8_00.gif&ehk=vp23n4JoiVJp7ZHi01cAxoEs92MPBME8kBvtbQdtMDk%3d"" class="rounded mx-auto d-block" alt="..."> </div>
    <div class="carousel-item">
     &nbsp<img src="https://www.bing.com/th/id/OGC.5fde3f6cc5a1b666b075228d89609127?pid=1.7&rurl=http%3a%2f%2fpa1.narvii.com%2f6171%2f63aba6103134da1db052a7cb0ac7843cca6379f8_00.gif&ehk=vp23n4JoiVJp7ZHi01cAxoEs92MPBME8kBvtbQdtMDk%3d"" class="rounded mx-auto d-block" alt="..."> 
    </div>
    <div class="carousel-item">
     &nbsp <img src="https://www.bing.com/th/id/OGC.5fde3f6cc5a1b666b075228d89609127?pid=1.7&rurl=http%3a%2f%2fpa1.narvii.com%2f6171%2f63aba6103134da1db052a7cb0ac7843cca6379f8_00.gif&ehk=vp23n4JoiVJp7ZHi01cAxoEs92MPBME8kBvtbQdtMDk%3d"" class="rounded mx-auto d-block" alt="..."> 
    </div>
  </div>
</div>
 </div>      

    </div>
    
</asp:Content>
