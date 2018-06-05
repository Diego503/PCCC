<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="RegistrarVisita.aspx.vb" Inherits="Proyecto_CCC.RegistrarVisita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container" style="padding: 10%; margin-top:3px; padding-top:0px" > 
    <div class="row">
    <div class="col-lg-7 text-center ">
   <h5>  Registro de nuevo evento  </h5></div>
    <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right" > Fecha de visita: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtFecha" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="DD/MM/AA" TextMode="Date" runat="server"></asp:TextBox>
    </div></div></div>

        <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right" > Hora de visita: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:TextBox ID="TxtHora" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="00/00/00" TextMode="Time" runat="server"></asp:TextBox>
    </div></div></div>

        <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right" >  Descripción: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtDescripcion" CssClass="border-success rounded form-control form-control-sm" TextMode="MultiLine" PlaceHolder="Detalle de actividad" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div></div></div>

    <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right" > Nombre del encargado: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:TextBox ID="TxtNomEncargado" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Ej: Juan Perez" onkeypress="return LetrasN(event)" onKeyUp="this.value = this.value.toUpperCase()" MaxLength="50" runat="server"> </asp:TextBox>
    </div></div></div>

         <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right" > Estado: </h6> </div>
        <div class="col-lg-6 float-left">  
        <asp:DropDownList ID="cmbestado" runat="server" CssClass="dropdown form-control border-success rounded"> <asp:ListItem Text="Pendiente">  </asp:ListItem> <asp:ListItem Text="Finalizada">  </asp:ListItem></asp:DropDownList>
    </div></div></div>


        <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <div class="row"> 
       <div class="col-lg-3"> <h6 class="text-center float-right" > Contacto: </h6> </div>
        <div class="col-lg-6 float-left"> 
        <asp:DropDownList ID="cmbcontacto" runat="server" CssClass="dropdown form-control-sm form-control border-success rounded"> <asp:ListItem Text="Empresa1">  </asp:ListItem> <asp:ListItem Text="Empresa2">  </asp:ListItem></asp:DropDownList>
    </div></div></div>

        <div class="col-lg-4" style ="margin-left: 15%; margin-bottom:-9%; align-content:space-around; text-align:left; ">  
            <asp:Button ID="btnIngresar" CssClass="btn-group-lg btn-success btn-sm" runat="server" Text="Registrar" />
            </div>
        <div class="col-lg-4" style ="margin-left: 30%; margin-bottom:-1%; align-content:space-around; text-align:right;">  
            <asp:Button ID="btnCancelar" CssClass="btn-group-lg btn-success btn-sm" runat="server" Text="Cancelar" />
            </div>
         </div>

            
           </div>

    <script>
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
