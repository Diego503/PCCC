<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Registrar.aspx.vb" Inherits="Proyecto_CCC.Registrar" %>
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
        <asp:TextBox ID="TxtFechaInicio"  CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Dia" TextMode="Date"  runat="server"></asp:TextBox>
    </div></div></div>

          <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Fecha de finalización: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="TxtFechaFin" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="DD/MM/AA" TextMode="Date" runat="server"></asp:TextBox>
    </div></div></div>

          <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Monto total: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="TxtMonto" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="$"  onkeypress="return soloLetras(event)" MaxLength="6" runat="server" > </asp:TextBox>
    </div></div></div>

              <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Tipo de facturación: </h6> </div>
        <div class="col-lg-2 float-left">  
         <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbtipodefacturacion" runat="server">
                    <asp:ListItem> Crédito Fiscal </asp:ListItem>
                 <asp:ListItem> Comprobante </asp:ListItem>
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
        <asp:TextBox ID="TxTDescripcion" CssClass="border-success rounded form-control form-control-sm" TextMode="MultiLine"  PlaceHolder=" " onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div></div></div>
        <br />
        <br />
        <br />
        <div class="texto col-lg-12" style="margin-bottom: 10%; "> 
            <asp:Button ID="btnRegistrar"  CssClass="btn-group-lg btn-success btn-lg" runat="server" Text="Registrar" />
        </div>
       </div>
  </div>
        

  <div style="overflow:auto; padding:1%">
    <div style="float:right;">
      <button type="button" class="btn btn-group-lg btn-success" id="prevBtn" onclick="nextPrev(-1)">Regresar</button>
      <button type="button" class="btn btn-group-lg btn-success" id="nextBtn" onclick="nextPrev(1)">Siguiente</button>
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

    function LetrasN(e) {
        key = e.keyCode || e.which;
        tecla = String.fromCharCode(key).toString();
        letras = " áéíóúabcdefghijklmnñopqrstuvwxyzÁÉÍÓÚABCDEFGHIJKLMNÑOPQRSTUVWXYZ,";
        especiales = [8, 37, 39, 46, 6]; 

        tecla_especial = false
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
