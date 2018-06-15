<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="EditarContrato.aspx.vb" Inherits="Proyecto_CCC.EditarContrato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h5 class="text-center">  INGRESE LOS DATOS DEL CONTRATO   </h5>
    <div class="row">
        <div class="col-lg-12">
         <div class="texto col-lg-12 border-success rounded border-bottom-0 ">  
        <h6> Propietario del Contrato </h6>
             <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbCliente" runat="server" AutoPostBack="True">
             </asp:DropDownList>
             </div></div>
        <div class="col-lg-12">
         <div class="texto col-lg-12 border-success rounded border-bottom-0 ">  
        <h6> Seleccione el contrato a editar </h6>
             <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbContrato" runat="server">
             </asp:DropDownList>
             </div></div>
            <br />
  <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Fecha de inicio: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="Txtfechainicio"  CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Dia" TextMode="Date"  runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvvFecha" ForeColor="Red" runat="server" Display="Dynamic" ControlToValidate="Txtfechainicio" ErrorMessage="Fecha incorrecta, debe ser despues de la fecha actual." Type="Date" Operator="Equal" ></asp:CompareValidator>
    </div></div></div>

          <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Fecha de finalización: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="txtfechafin" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="DD/MM/AA" TextMode="Date" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvFecha" ForeColor="Red" runat="server" Display="Dynamic" ControlToValidate="txtfechafin" ErrorMessage="Fecha incorrecta, debe ser despues de la fecha actual." Type="Date" Operator="GreaterThanEqual" ></asp:CompareValidator>
    </div></div></div>

          <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Monto total: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="txtmonto" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="$"  onkeypress="return soloLetras(event)"  MaxLength="5" runat="server" > </asp:TextBox>
            <asp:RangeValidator ID="rgvMonto" ForeColor="Red" runat="server" Display="Dynamic" ControlToValidate="TxtMonto" ErrorMessage="Monto fuera de rango" Type="Double" MaximumValue="10000" MinimumValue="50" ></asp:RangeValidator>
    </div></div></div>

              <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Tipo de facturación: </h6> </div>
        <div class="col-lg-2 float-left">  
         <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbtipodefacturacion" runat="server">
                 <asp:ListItem>Crédito Fiscal</asp:ListItem>
                 <asp:ListItem>Comprobante</asp:ListItem>
             </asp:DropDownList>
    </div></div></div>
        <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Promoción: </h6> </div>
        <div class="col-lg-2 float-left">  
         <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbpromociones" runat="server">
             <asp:ListItem> Ninguna </asp:ListItem>
         </asp:DropDownList>
    </div></div></div>
                <div class="texto col-lg-12"> 
        <div class="row"> 
                        <div class="col-lg-1"> </div>
       <div class="col-lg-2"> <h6 class=" float-right" > Fecha de pago: </h6> </div>
        <div class="col-lg-2 float-left">  
        <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbdiapago" runat="server">
             </asp:DropDownList>
             </div> </div> </div>

     <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Descripción: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="TxtDescripcion" CssClass="border-success rounded form-control form-control-sm" TextMode="MultiLine"  PlaceHolder = "Servicios, detalles etc" onkeypress="return LetrasN(event)" MaxLength="50" runat="server"> </asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" ForeColor="Red" runat="server" Display="Dynamic" ControlToValidate="TxtMonto" ErrorMessage="Monto fuera de rango" Type="Double" MaximumValue="10000" MinimumValue="50" ></asp:RangeValidator>
    
        </div></div></div>
        <br />
        <br />
        <div class="texto col-lg-12" style="margin-bottom: 10%; "> 
            <asp:Button ID="btnIngresar"  CssClass="btn-group-sm btn-success btn-sm" runat="server" Text="Registrar" />
            <asp:Button ID="BtnCancelar"  CssClass="btn-group-sm btn-success btn-sm" runat="server" Text="Cancelar" />
        </div>
      </div>

</asp:Content>
