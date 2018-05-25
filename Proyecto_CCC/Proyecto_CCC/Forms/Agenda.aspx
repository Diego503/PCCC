<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Agenda.aspx.vb" Inherits="Proyecto_CCC.Agenda1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:Calendar ID="Agenda" runat="server" SelectedDayStyle-BorderStyle="Dashed" SelectedDayStyle-BorderColor="Aqua">
            <OtherMonthDayStyle ForeColor="#b0b0b0" />
            <DayStyle CssClass="myCalendarDay" ForeColor="#2d3338" />
            <DayHeaderStyle CssClass="myCalendarDayHeader" ForeColor="#2d3338" />
            <SelectedDayStyle Font-Bold="True" Font-Size="12px" CssClass="myCalendarSelector" />
            <TodayDayStyle CssClass="myCalendarToday" />
            <SelectorStyle CssClass="myCalendarSelector" />
            <NextPrevStyle CssClass="myCalendarNextPrev" />
            <TitleStyle CssClass="myCalendarTitle" />
        </asp:Calendar>
    <asp:Button CssClass="btn btn-success btn-lg" ID="btnRegistrarVista" runat="server" Text="Registrar nuevo evento" />
</asp:Content>
