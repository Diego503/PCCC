<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Contrato.aspx.vb" Inherits="Proyecto_CCC.Contrato1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h4> REGISTRO DE CONTRATO </h4>

     <div class="row">
    <div class="col-lg-12">
         <div class="texto col-lg-12 border-success rounded border-bottom-0 ">  
        <h6> Propietario del contrato </h6>
             <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="CmbCliente" runat="server">
<asp:ListItem> Empresa de Ejemplo 1 </asp:ListItem>
                 <asp:ListItem> Empresa de Ejemplo 1 </asp:ListItem>
             </asp:DropDownList>
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
       <div class="col-lg-3"> <h6 class=" float-right" > promocion: </h6> </div>
        <div class="col-lg-2 float-left">  
         <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbpromociones" runat="server">
             <asp:ListItem> ninguna </asp:ListItem>
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

        <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
        <asp:Button ID="btnIngresar" CssClass="btn-group-lg btn-success btn-sm"  runat="server" Text="Registrar" />
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
