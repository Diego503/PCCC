<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="PreRegistro.aspx.vb" Inherits="Proyecto_CCC.PreRegistro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <h1 class="text-center" style="color:black"> Pre-registro del Cliente </h1>
    <h3 class="text-center"> Escoja una opción </h3>
    <div class="row" style="overflow: hidden;">
        <div class="col-sm-6" style="overflow: hidden;"> 
            <div style="float:right; overflow: hidden;">
            <asp:Button ID="Button1" CssClass=" btn btn-group btn-group-lg btn-success rounded" runat="server" Text="Nuevo Cliente" />
            </div>
        </div>
        <div class="col-sm-6" style="overflow: hidden;">
            <div  style="float:left; overflow: hidden;">
<asp:Button ID="Button2" CssClass=" btn btn-group btn-group-lg btn-success rounded" runat="server" Text="Solo Contrato" />
            </div>
           
        </div>
    </div>
</div>

</asp:Content>
