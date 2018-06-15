<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Promociones.aspx.vb" Inherits="Proyecto_CCC.Promociones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid"  style="padding : 1%"> 
    <div class="row">
    <div class="col-lg-12 ">
        <br />  
            <h5> Promociones/Planes  </h5> 
     <br />
        <div class="texto col-lg-12"> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class=" float-right" > Nombre: </h6> </div>
        <div class="col-lg-6 float-left">
        <asp:TextBox ID="Txtnombreprom" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Descuentos en servicios" onkeypress="return LetrasN(event)" MaxLength="50" runat="server"> </asp:TextBox></div></div>
    </div>
        <br />
          <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
            <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right"> Descripción: </h6> </div>
        <div class="col-lg-6 float-left">
        <asp:TextBox ID="txtdescripcion" TextMode="MultiLine" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Promoción navideña, etc." MaxLength="300" runat="server"> </asp:TextBox></div></div>
    </div>
    <div class="texto col-lg-12 border-success rounded border-bottom-0" style="margin-top: 2%;  "> 
        <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right" >  Fecha de inicio: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="Txtfechainicio" CssClass="border-success rounded form-control form-control-sm " PlaceHolder="DD/MM/AA " TextMode="Date" runat="server"></asp:TextBox></div></div>
        <asp:CompareValidator ID="cvFechaProo" runat="server" Display="Dynamic" ControlToValidate="Txtfechainicio" ErrorMessage="Fecha incorrecta, debe ser la fecha actual" Type="Date" Operator="Equal" ForeColor="Red" ></asp:CompareValidator>
    </div>
        <br />
        <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right" >  Fecha de finalización: </h6> </div>
        <div class="col-lg-6 float-left">
        <asp:TextBox ID="Txtfechafin" CssClass="border-success rounded form-control form-control-sm " PlaceHolder="DD/MM/AA " TextMode="Date" runat="server"></asp:TextBox></div></div>
    </div>
        <br />
     <div class="texto col-lg-12"> 
          <div class="row"> 
        <div class="col-md-1"> </div>
       <div class="col-lg-2"> <h6 class="text-center float-right"> Descuento: </h6> </div>
        <div class="col-lg-2 float-left">
        <asp:TextBox ID="TxtDescuento" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="%25"  onkeypress="return soloLetras(event)" MaxLength="3" runat="server"> </asp:TextBox></div>
      </div> 
         </div>
        <div class="texto col-lg-12"> 
          <div class="row">
         <div class="col-lg-3"> <h6 class="text-center float-right"> Aplica desde: </h6> </div>
        <div class="col-lg-2 float-left">
        <asp:TextBox ID="txtAplicadesde" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="# Meses"  onkeypress="return soloLetras(event)" MaxLength="3" runat="server"> </asp:TextBox></div>
               </div>
            </div>
        <br />
      
        <div class="row">
            <div class="col-lg-2"></div>
        <div class="col-lg-3" style =" margin-left:10%; text-align:right; ">  
           <asp:Button ID="btnIngresar" CssClass="btn-group-sm btn-success btn-sm" Width="75px" Height="35px" runat="server" Text="Registrar" />
            </div>
        <div class="col-lg-3" style =" margin-right: 22%;  text-align:justify; ">  
            <asp:Button ID="btnCancelar" CssClass="btn-group-sm btn-success btn-sm" Width="75px" Height="35px" runat="server" Text="Cancelar" />
            </div>
             <div class="col-lg-2"></div>
                </div>
            
           </div>
         </div>
       </div> 

    <script>
    function soloLetras(e){
       key = e.keyCode || e.which;
       tecla = String.fromCharCode(key).toLowerCase();
       letras = "1234567890";
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
