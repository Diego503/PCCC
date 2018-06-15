<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="EditarRegistros.aspx.vb" Inherits="Proyecto_CCC.EditarRegistros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class=" text-center"> Editar registros  </h4>
    <h6 class="text-center"> Selecione una opcion para editar </h6>
    <div class="row">
        
        <div class=" col-lg-4" style="margin: 5%"><br /><asp:Button ID="BtnEditarCliente" CssClass="btn btn-success btn-group-sm" runat="server" Text="  Clientes " /> </div>
        <div class=" col-lg-4" style="margin: 5%"><br /><asp:Button ID="BtnContacto" CssClass="btn btn-success btn-group-sm" runat="server" Text="Contacto " /> </div>
        <div class=" col-lg-4" style="margin: 5%"><br /><asp:Button ID="BtnEditarContrato" CssClass="btn btn-success btn-group-sm" runat="server" Text="  Contrato " /> </div>
        <div class=" col-lg-4" style="margin: 5%"> <br /> <asp:Button ID="BtnEditarEvento" CssClass="btn btn-success btn-group-sm" runat="server" Text="  Eventos  "/> </div>
        <div class=" col-lg-4" style="margin: 5%"><br /><asp:Button ID="BtnEditarPromocion" CssClass="btn btn-success btn-group-sm" runat="server" Text="Promociones" /> </div>

    </div>

</asp:Content>
