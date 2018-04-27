<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="RegistrarVisita.aspx.vb" Inherits="Proyecto_CCC.RegistrarVisita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <% Dim Array As String() = {"HolaMundo", "Tupotamadre", "ROBOTO21233"}  %>
<div id="div1">
<%
For i As Integer = 0 To 2 %>
            <div class="texto col-lg-12"> 
         <h6>  Descripcion: </h6>
        <asp:TextBox ID="TextBox2" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="detalle de actividad" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div>
<% Next %>
</div>
     <div class="container" style="padding: 3%; margin-top:3px; padding-top:0px" > 
    <div class="row">
    <div class="col-lg-7 ">

    <div class=" texto  border-success" style="overflow:auto;background-color:#FAFAFA; padding: 5%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
    <div class="texto col-lg-12 text-center border-success rounded border-bottom btn-success" > <h3>  Nueva visita  </h3> </div>
     <br />
    <div class="texto col-lg-12 border-success rounded border-bottom-0" style="margin-top: 2%;  ">  
        <h6>  Fecha de visita:</h6>
        <asp:TextBox ID="TxtUsuario" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="DD/MM/AA" TextMode="Date" runat="server"></asp:TextBox>
    </div>
        <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <h6>  Hora de visita:</h6>
        <asp:TextBox ID="TextBox1" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="00/00/00" TextMode="Time" runat="server"></asp:TextBox>
    </div>
    <div class="texto col-lg-12"> 
         <h6>  Nombre del encargado: </h6>
        <asp:TextBox ID="TxtContraseña" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Ej: Juan Perez" onkeypress="return LetrasN(event)" onKeyUp="this.value = this.value.toUpperCase()" MaxLength="50" runat="server"> </asp:TextBox>
    </div>
               <div class="texto col-lg-12" > 
         <h6>  Estado: </h6>
        <asp:DropDownList runat="server" CssClass="dropdown form-control"> <asp:ListItem Text="Pendiente">  </asp:ListItem> <asp:ListItem Text="Finalizada">  </asp:ListItem></asp:DropDownList>
    </div>
            <div class="texto col-lg-12"> 
         <h6>  Descripción: </h6>
        <asp:TextBox ID="TextBox3" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Detalle de actividad" onkeypress="return LetrasN(event)" MaxLength="100" runat="server"> </asp:TextBox>
    </div>
        <div class="texto col-lg-12" > 
         <h6>  Contacto: </h6>
        <asp:DropDownList runat="server" CssClass="dropdown form-control"> <asp:ListItem Text="Empresa1">  </asp:ListItem> <asp:ListItem Text="Empresa2">  </asp:ListItem></asp:DropDownList>
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
