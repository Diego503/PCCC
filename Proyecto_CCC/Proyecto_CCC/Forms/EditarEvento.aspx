<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="EditarEvento.aspx.vb" Inherits="Proyecto_CCC.EditarEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="row">
    <div class="col-lg-12 text-center ">
   <h5>  Eventos  </h5></div>
 
       
        <div class="texto col-lg-12"> 
         <h6 class=" text-center" > Selecciona el Evento a editar: </h6>
        
             <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="cmbEventos" runat="server">
         </asp:DropDownList>
            <br />
    </div>
            <br />
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
        <asp:DropDownList ID="cmbcontacto" runat="server" CssClass="dropdown form-control-sm form-control border-success rounded"> 

        </asp:DropDownList>
    </div></div></div>
        <br />


        <div class="col-lg-12" style="margin-top: 10px">
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



</asp:Content>
