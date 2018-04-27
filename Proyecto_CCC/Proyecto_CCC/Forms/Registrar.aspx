<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Registrar.aspx.vb" Inherits="Proyecto_CCC.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="regForm" class="container-fluid" style="overflow:auto; background-color:#FAFAFA; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" >

  <h1 class="btn-group-lg btn-success text-center  rounded" style="padding:1%"> REGISTRO DE NUEVO CLIENTE</h1>

           <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>

  <!-- One "tab" for each step in the form: -->
  <div class="tab"> 
   <h3 class="text-center"> <strong> 1.- INGRESE LOS DATOS DEL CLIENTE  </strong> </h3>
  <div class="row">
    <div class="col-sm-7 ">
    <div class="texto col-sm-12 border-success border-bottom-0" style="margin-top: 2%; ">  
        <div class="texto col-lg-12 border-success">  
        <h6> Nombre del negocio:</h6>
        <asp:TextBox ID="TxtNombreNegocio" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Ecolab S.A de C.V" onkeypress="return LetrasN(event)" onKeyUp="this.value = this.value.toUpperCase()" MaxLength="50" runat="server"></asp:TextBox>
    </div>
        
        <div class="texto col-sm-12"> 
         <h6>  Correo electrónico: </h6>
        <asp:TextBox ID="TxtCorreo" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="juanPP@gmail.com" TextMode="Email" runat="server"> </asp:TextBox>
    </div>

    <div class="texto col-sm-12"> 
         <h6>  Teléfono: </h6>
        <asp:TextBox ID="TxtTelefono" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="2354-8545" TextMode="Number" onkeypress="return soloLetras(event)" MaxLength="9" runat="server"> </asp:TextBox>
    </div>
            <div class="texto col-sm-12"> 
         <h6>  Dirección:</h6>
        <asp:TextBox ID="TxtDireccion" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="colonia El Centro, Ilobasco, Cabañas" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div>
            
            <div class="texto col-sm-12"> 
         <h6>  NIT: </h6>
        <asp:TextBox ID="TxtNIT" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="192-101098-120-2" TextMode="Number" onkeypress="return soloLetras(event)" MaxLength="17" runat="server"> </asp:TextBox>
    </div>
            <div class="texto col-sm-12" > 
         <h6>  NRC: </h6>
        <asp:TextBox ID="TxtRNC" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="192-101098-120-2" TextMode="Number" onkeypress="return soloLetras(event)" MaxLength="17" runat="server"> </asp:TextBox>
    </div>
                </div>
            </div>
        </div>
      </div>
  <div class="tab">
    <h3 class="text-center"> <strong> 2.- INGRESE LOS DATOS DEL CONTACTO DEL CLIENTE  </strong> </h3>
  <div class="row">
    <div class="col-sm-7 ">
    
        
        <div class="texto col-sm-12 border-success">  
        <h6>Nombre del Contacto:</h6>
        <asp:TextBox ID="TxtContacto" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Diego Zepeda" onkeypress="return LetrasN(event)" onKeyUp="this.value = this.value.toUpperCase()" MaxLength="50" runat="server"></asp:TextBox>
           </div>

                <div class="texto col-sm-12"> 
         <h6>Correo electrónico:</h6>
        <asp:TextBox ID="TxtCorreoContacto" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="juanPP@gmail.com" TextMode="Email" runat="server"> </asp:TextBox>
    </div>

    <div class="texto col-sm-12"> 
         <h6>Teléfono:</h6>
        <asp:TextBox ID="TxtTelefonoContacto" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="2354-8545" TextMode="Number" onkeypress="return soloLetras(event)" MaxLength="9" runat="server"> </asp:TextBox>
    </div>
            <div class="texto col-sm-12"> 
         <h6>  Dirección:</h6>
        <asp:TextBox ID="TxtDireccionContacto" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="colonia El Centro, Ilobasco, Cabañas" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div>
            

        </div>
      </div>
  </div>
  <div class="tab"> 
    <h3 class="text-center"> <strong> 3.- INGRESE LOS DATOS DEL CONTRATO  </strong> </h3>
    <div class="row">
    <div class="col-lg-7">
    <div class="texto col-lg-12 border-success rounded border-bottom-0 ">  
        <h6>  Fecha de inicio:</h6>
        <asp:TextBox ID="TxtFechaInicio"  CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Dia" TextMode="Date" runat="server"></asp:TextBox>
    </div>
        <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <h6>  Fecha de finalización:</h6>
        <asp:TextBox ID="TxtFechaFin" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="DD/MM/AA" TextMode="Date" runat="server"></asp:TextBox>
    </div>
    <div class="texto col-lg-12"> 
         <h6>  Monto total: </h6>
        <asp:TextBox ID="TxtMonto" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="$" TextMode="Number" onkeypress="return soloLetras(event)" MaxLength="6" runat="server" > </asp:TextBox>
    </div>
            <div class="texto col-lg-12"> 
         <h6>  Tipo de facturación:</h6>
         <asp:DropDownList CssClass="dropdown form-control-lg border-success" ID="cmbtipodefacturacion" runat="server">
                    <asp:ListItem> Crédito Fiscal </asp:ListItem>
                 <asp:ListItem> Comprobante </asp:ListItem>
             </asp:DropDownList>
    </div>
            <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
         <h6>  Fecha de pago: </h6>
        <asp:DropDownList CssClass="dropdown form-control-lg border-success" ID="cmbdiapago" runat="server">
             </asp:DropDownList>
             </div>    
      <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
         <h6>  Descripción: </h6>
        <asp:TextBox ID="TxTDescripcion" CssClass="border-success rounded form-control form-control-lg" PlaceHolder=" " onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div>
        <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
            <asp:Button ID="btnRegistrar" CssClass="btn-group-lg btn-success btn-lg" runat="server" Text="Registrar" />
        </div>
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
        letras = " áéíóúabcdefghijklmnñopqrstuvwxyzÁÉÍÓÚABCDEFGHIJKLMNÑOPQRSTUVWXYZ";
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
