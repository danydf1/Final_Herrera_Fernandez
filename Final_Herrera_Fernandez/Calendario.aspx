<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calendario.aspx.cs" Inherits="Final_Herrera_Fernandez.Calendario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        
       <p class="fs-1">Seleccione una fecha</p>
        <p class="fs-2">Saldo: $3222</p>
    <div class="row">
  <div class="col">
 <asp:Calendar id="CalendarioConsorcio" class="rounded mx-auto d-block" runat="server" SelectedDayStyle-BackColor="Red" BackColor="White" BorderStyle="Solid" CaptionAlign="Top" BorderColor="Black" CellSpacing="1" CssClass="align-self-end" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" SelectedDate="11/23/2021 19:36:23" ViewStateMode="Enabled" Width="400px">
       <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
       <DayStyle BackColor="#CCCCCC" />
       <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
       <OtherMonthDayStyle ForeColor="#999999" />
<SelectedDayStyle BackColor="#333399" BorderColor="#66FF33" ForeColor="White"></SelectedDayStyle>
       <SelectorStyle HorizontalAlign="Center" VerticalAlign="Middle" />
       <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
       <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>

  </div>
  <div  style=" height:250px; width:auto; overflow:auto">
      <asp:GridView ID="Gv_GrillaDiaria" runat="server"    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="203px"   >
          <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
          <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#594B9C" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#33276A" />
      </asp:GridView>
  </div>
     
  
</div>
        
       
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
   
    
</asp:Content>
