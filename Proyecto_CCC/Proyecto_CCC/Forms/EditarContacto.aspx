<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="EditarContacto.aspx.vb" Inherits="Proyecto_CCC.EditarContacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h5 class="text-center"> INGRESE LOS DATOS DEL CONTACTO DEL CLIENTE  </h5>
  <div class="row">
            <div class="col-lg-12">
         <div class="texto col-lg-12 border-success rounded border-bottom-0 ">  
         <h6> Seleccione el Contacto a editar </h6>
             <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbContacto" runat="server">
             </asp:DropDownList>
             </div></div>

   <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Nombre del Contacto: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtContacto" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Diego Zepeda" onkeypress="return LetrasN(event)" onKeyUp="this.value = this.value.toUpperCase()" MaxLength="50" runat="server"></asp:TextBox>
           </div></div></div>

      <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Correo electrónico: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtCorreoContacto" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="juanPP@gmail.com" TextMode="Email" runat="server"> </asp:TextBox>
    </div></div></div>

   <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Teléfono: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtTelefonoContacto" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="2354-8545"  onkeypress="return soloLetras(event)" MaxLength="9" runat="server"> </asp:TextBox>
    </div></div></div>

            <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Dirección: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtDireccionContacto" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="colonia El Centro, Ilobasco, Cabañas" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div></div></div>

      <div class="texto col-lg-12" style="margin-bottom: 10%; "> 
            <asp:Button ID="btnIngresar"  CssClass="btn-group-sm btn-success btn-sm" runat="server" Text="Registrar" />
            <asp:Button ID="BtnCancelar"  CssClass="btn-group-sm btn-success btn-sm" runat="server" Text="Cancelar" />
        </div>
      </div>  
</asp:Content>
