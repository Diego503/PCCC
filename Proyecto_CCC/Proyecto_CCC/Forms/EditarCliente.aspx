<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="EditarCliente.aspx.vb" Inherits="Proyecto_CCC.EditarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h5 class="text-center">   INGRESE LOS DATOS DEL CLIENTE   </h5>


  <div class="row">
              <div class="col-lg-12">
         <div class="texto col-lg-12 border-success rounded border-bottom-0 ">  
         <h6> Seleccione el Cliente a editar </h6>
             <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbCliente" runat="server">
             </asp:DropDownList>
             </div></div>
        <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Nombre del negocio: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtNombreNegocio" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Ecolab S.A de C.V" onkeypress="return LetrasN(event)" onKeyUp="this.value = this.value.toUpperCase()" MaxLength="50" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" Display="Dynamic" ControlToValidate="TxtNombreNegocio" ErrorMessage="Falta ingreso de Nombre del Negocio" ForeColor="Red" ></asp:RequiredFieldValidator>
    </div> </div> </div>

       <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Correo electrónico: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtCorreo" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="juanPP@gmail.com" TextMode="Email" runat="server"> </asp:TextBox>
    </div></div></div>

    <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Teléfono: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="TxtTelefono" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="2354-8545"  onkeypress="return soloLetras(event)" MaxLength="9" runat="server"> </asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" Display="Dynamic" ControlToValidate="TxtTelefono" ErrorMessage="Falta ingreso de numero de Telefono" ForeColor="Red" ></asp:RequiredFieldValidator>
    </div></div></div>

      <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Dirección: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="TxtDireccion" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="colonia El Centro, Ilobasco, Cabañas" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" Display="Dynamic" ControlToValidate="TxtDireccion" ErrorMessage="Falta ingreso de Direccion" ForeColor="Red"></asp:RequiredFieldValidator>
    </div></div></div>
            
           <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > NIT: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtNIT" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="192-101098-120-2"  onkeypress="return soloLetras(event)" MaxLength="14" runat="server"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNIT" runat="server" Display="Dynamic" ControlToValidate="TxtNIT" ErrorMessage="Falta ingreso de NIT" ForeColor="Red"></asp:RequiredFieldValidator>
    </div></div></div>

        <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > NRC: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtRNC" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="192-101098-120-2"  onkeypress="return soloLetras(event)" MaxLength="17" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRNC" runat="server" Display="Dynamic" ControlToValidate="TxtRNC" ErrorMessage="Falta ingreso de RNC" ForeColor="Red"></asp:RequiredFieldValidator>
        </div></div></div>
      <div class="texto col-lg-12" style="margin-bottom: 10%; "> 
            <asp:Button ID="btnIngresar"  CssClass="btn-group-sm btn-success btn-sm" runat="server" Text="Registrar" />
            <asp:Button ID="BtnCancelar"  CssClass="btn-group-sm btn-success btn-sm" runat="server" Text="Cancelar" />
        </div>
                </div>
       

</asp:Content>
