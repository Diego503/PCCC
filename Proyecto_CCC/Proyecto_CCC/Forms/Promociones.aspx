<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Promociones.aspx.vb" Inherits="Proyecto_CCC.Promociones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="padding: 3%; margin-top:3px; padding-top:0px" > 
    <div class="row">
    <div class="col-lg-7 ">

    <div class=" texto  border-success" style="overflow:auto;background-color:#FAFAFA; padding: 5%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
    <div class="texto col-lg-12 text-center border-success rounded border-bottom btn-success" style="background-color: " > <h3> Promociones/Planes  </h3> </div>
     <br />
    <div class="texto col-lg-12 border-success rounded border-bottom-0" style="margin-top: 2%;  ">  
        <h6>  Fecha de inicio:</h6>
        <asp:TextBox ID="TxtUsuario" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="DD/MM/AA" TextMode="Date" runat="server"></asp:TextBox>
    </div>
        <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <h6>  Fecha de finalización:</h6>
        <asp:TextBox ID="TextBox1" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="DD/MM/AA " TextMode="Date" runat="server"></asp:TextBox>
    </div>
    <div class="texto col-lg-12"> 
         <h6>  Nombre de la promoción: </h6>
        <asp:TextBox ID="TxtContraseña" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Ej: Descuentos en servicios" onkeypress="return LetrasN(event)" MaxLength="50" runat="server"> </asp:TextBox>
    </div>
            <div class="texto col-lg-12"> 
         <h6>  Precio actual:</h6>
        <asp:TextBox ID="TextBox2" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="$" TextMode="Number" onkeypress="return soloLetras(event)" MaxLength="6" runat="server"> </asp:TextBox>
    </div>
            <div class="texto col-lg-12"> 
         <h6>  Descuento: </h6>
        <asp:TextBox ID="TextBox3" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="%" TextMode="Number" onkeypress="return soloLetras(event)" MaxLength="3" runat="server"> </asp:TextBox>
    </div>
        <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
         <h6> Observaciones: </h6>
        <asp:TextBox ID="TextBox4" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div>
        <div class="col-lg-4" style ="margin-left: 25%; margin-bottom:-9%; align-content:space-around; text-align:left; ">  
            <asp:Button ID="btnIngresar" CssClass="btn-group-lg btn-success btn-lg" runat="server" Text="Registrar" />
            </div>
        <div class="col-lg-4" style ="margin-left: 40%; margin-bottom:-1%; align-content:space-around; text-align:right;">  
            <asp:Button ID="btnCancelar" CssClass="btn-group-lg btn-success btn-lg" runat="server" Text="Cancelar" />
            </div>
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
