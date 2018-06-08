﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Registrar.aspx.vb" Inherits="Proyecto_CCC.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="regForm" class="container-fluid" style="overflow:auto;" >

  <h5 style="padding:1%"> <strong> REGISTRO DE NUEVO CLIENTE </strong> </h5>
           <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:25px;">
    <span  class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>

  <!-- One "tab" for each step in the form: -->
  <div class="tab"> 
   <h5 class="text-center">  1.- INGRESE LOS DATOS DEL CLIENTE   </h5>
  <div class="row">
        <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Nombre del negocio: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtNombreNegocio" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Ecolab S.A de C.V" onkeypress="return LetrasN(event)" onKeyUp="this.value = this.value.toUpperCase()" MaxLength="50" runat="server"></asp:TextBox>
    </div> </div> </div>`

       <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Correo electrónico: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtCorreo" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="juanPP@gmail.com" TextMode="Email" runat="server"> </asp:TextBox>
            <asp:RegularExpressionValidator  ID="revCorreo" runat="server" ControlToValidate="TxtCorreo" ErrorMessage="Formato de correo no valido" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)" ForeColor="Red" ></asp:RegularExpressionValidator>
    </div></div></div>

    <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Teléfono: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="TxtTelefono" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="2354-8545"  onkeypress="return soloLetras(event)" MaxLength="9" runat="server"> </asp:TextBox>
    </div></div></div>

      <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Dirección: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="TxtDireccion" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="colonia El Centro, Ilobasco, Cabañas" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div></div></div>
            
           <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > NIT: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtNIT" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="192-101098-120-2"  onkeypress="return soloLetras(event)" MaxLength="17" runat="server"> </asp:TextBox>
    </div></div></div>

        <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > NRC: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtRNC" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="192-101098-120-2"  onkeypress="return soloLetras(event)" MaxLength="17" runat="server"> </asp:TextBox>
    </div></div></div>

                </div>
            </div>

  <div class="tab">
    <h5 class="text-center">  2.- INGRESE LOS DATOS DEL CONTACTO DEL CLIENTE   </h5>
  <div class="row">

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
            <asp:RegularExpressionValidator  ID="revCorreoC" runat="server" ControlToValidate="TxtCorreoContacto" ErrorMessage="Formato de correo no valido" ValidationExpression="\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"></asp:RegularExpressionValidator>
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
      </div>     
  </div>

    <div class="tab"> 
    <h5 class="text-center"> 3.- INGRESE LOS DATOS DEL CONTRATO   </h5>
    <div class="row">
  <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Fecha de inicio: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="Txtfechainicio"  CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Dia" TextMode="Date"  runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvFechaI" runat="server" Display="Dynamic" ControlToValidate="Txtfechainicio" ErrorMessage="Fecha incorrecta, debe ser la fecha actual" Type="Date" Operator="LessThan"></asp:CompareValidator>
    </div></div></div>

          <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Fecha de finalización: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="txtfechafin" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="DD/MM/AA" TextMode="Date" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvFechaF" runat="server" Display="Dynamic" ControlToValidate="txtfechafin" ErrorMessage="Fecha incorrecta, debe ser despues de la fecha actual" Type="Date" Operator="GreaterThanEqual"></asp:CompareValidator>
    </div></div></div>

          <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Monto total: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="txtmonto" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="$"  onkeypress="return soloLetras(event)"  MaxLength="6" runat="server" > </asp:TextBox>
            <asp:RangeValidator ID="rgvMontoCliente" runat="server" Display="Dynamic" ControlToValidate="txtmonto" ErrorMessage="Monto fuera de rango" Type="Double" MaximumValue="10000" MinimumValue="50"></asp:RangeValidator>
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
        <asp:TextBox ID="TxtDescripcion" CssClass="border-success rounded form-control form-control-sm" TextMode="MultiLine"  PlaceHolder=" " onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div></div></div>
        <br />
        <br />
        <br />
       </div>
      </div>
       <div class="tab"> 
        <h5 class="text-center"> 4.- Seleccione un medio   </h5>
           <div class="row">
       <div class="texto col-lg-12"> 
        <div class="row"> 
        <div class="col-lg-1"> </div>
       <div class="col-lg-2"> <h6 class=" float-right"> Tipo de medio: </h6> </div>
        <div class="col-lg-2 float-left">  
        <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbtipomedio" runat="server" AutoPostBack="True">
            <asp:ListItem>Mupi</asp:ListItem>
           <asp:ListItem>Pantalla</asp:ListItem>
            <asp:ListItem>Acroly</asp:ListItem>
             </asp:DropDownList>
             </div> </div> </div>        
        <div class="texto col-lg-12"> 
        <div class="row"> 
        <div class="col-lg-1"> </div>
        <div class="col-lg-2"> <h6 class=" float-right"> Seleccion la ubicación: </h6> </div>
        <div class="col-lg-2 float-left">  
        <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbUbicacion" runat="server" AutoPostBack="True">
             </asp:DropDownList>
             </div> </div> </div>


     <asp:Panel CssClass="auto-style1" visible="false" ID="RegistroDePantalla" runat="server">

       <div class="texto col-lg-12"> 
        <div class="row"> 
        <div class="col-lg-2"> </div>
       <div class="col-lg-3"> <h6 class=" float-right" > Repeticiones: </h6> </div>
        <div class="col-lg-3 float-left">  
        <asp:TextBox ID="TxtRepeticiones" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="0" onkeypress="return soloLetras(event)" MaxLength="4" runat="server"> </asp:TextBox>
    </div></div></div>

        <div class="texto col-lg-12"> 
        <div class="row"> 
        <div class="col-lg-2"> </div>
       <div class="col-lg-3"> <h6 class=" float-right" > Duración: </h6> </div>
        <div class="col-lg-3 float-left">  
        <asp:TextBox ID="TxtDuracion" CssClass="border-success rounded form-control form-control-sm"  PlaceHolder="0" onkeypress="return soloLetras(event)" MaxLength="3" runat="server"> </asp:TextBox>
    </div></div></div>
         </asp:Panel>



      <asp:Panel CssClass="auto-style1" Visible="true" ID="RegistroDeMupys" runat="server" Direction="NotSet" ScrollBars="Auto">
     <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-2"> </div>
       <div class="col-lg-3"> <h6 class=" float-right"> Seleccione el lado: </h6> </div>
        <div class="col-lg-3 float-left"> 
            <asp:CheckBoxList ID="CheckBoxList1" CellSpacing="2" CssClass="custom-checkbox" runat="server" Direction="LeftToRight" RepeatDirection="Horizontal"></asp:CheckBoxList>
            </div></div></div>
         
               </asp:Panel>
       <div class="texto col-lg-12" style="margin-bottom: 10%; "> 
            <asp:Button ID="btnIngresar"  CssClass="btn-group-sm btn-success btn-sm" runat="server" Text="Registrar" />
        </div>
</div>
           </div>
  <div style="overflow:auto; padding:1%">
    <div style="float:right;">
      <button type="button" class="btn btn-group-lg btn-success" id="prevBtn" onclick="nextPrev(-1)">Regresar</button>
      <button type="button" class="btn btn-group-lg btn-success" id="nextBtn" onclick="nextPrev(1)">Siguiente</button>
      <asp:Button ID="btnCancelar"  CssClass="btn-group-sm btn-success btn-sm" runat="server" Text="Cancelar" />

            </div>
        </div>
    </div>
    <script>

    function soloLetras(e){
       key = e.keyCode || e.which;
       tecla = String.fromCharCode(key).toLowerCase();
       letras = "1234567890.";
       especiales = "8-37-39-46";

       tecla_especial = false
       for(var i in especiales){
            if(key == especiales[i]){
                tecla_especial = true;
                break;
            }
        }

       if (letras.indexOf(tecla) == -1 && !tecla_especial) {
           alert('Tecla no aceptada');
            return false;
        }
    }
    var haspoint = false;
    function LetrasN(e) {
        key = e.keyCode || e.which;
        tecla = String.fromCharCode(key).toString();
        letras = " áéíóúabcdefghijklmnñopqrstuvwxyzÁÉÍÓÚABCDEFGHIJKLMNÑOPQRSTUVWXYZ,";
        especiales = [8, 37, 39, 46, 6]; 
        tecla_especial = false
       aler(document.getElementById("TxtMonto").textContent.toString)
        for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
               
                break;
            }
        }

        if (letras.indexOf(tecla) == -1 && !tecla_especial) {
            alert('Tecla no aceptada');
            return false;
        }
    }
</script>

</asp:Content>
