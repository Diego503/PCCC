<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Promociones.aspx.vb" Inherits="Proyecto_CCC.Promociones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container align-items-center" style="padding: 3%" > 
    <div class="row">
    <div class="col-lg-7 ">

    <div class=" texto form-row align-self-center border-success rounded" style="background-color:#FAFAFA; padding: 5%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
    <div class="texto col-lg-12 text-center border-success rounded border-bottom btn-success" style="background-color: " > <h3> Promociones/Planes  </h3> </div>
     <br />
    <div class="texto col-lg-12 border-success rounded border-bottom-0" style="margin-top: 2%;  ">  
        <h6>  Fecha de inicio:</h6>
        <asp:TextBox ID="TxtUsuario" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="DD/MM/AA" runat="server"></asp:TextBox>
    </div>
        <div class="texto col-lg-12 border-success rounded border-bottom-0" style="background-color: ">  
        <h6>  Fecha de finalización:</h6>
        <asp:TextBox ID="TextBox1" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="DD/MM/AA " runat="server"></asp:TextBox>
    </div>
    <div class="texto col-lg-12"> 
         <h6>  Nombre de la promoción: </h6>
        <asp:TextBox ID="TxtContraseña" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Ej: Descuentos en servicios" runat="server"> </asp:TextBox>
    </div>
            <div class="texto col-lg-12"> 
         <h6>  Precio actual:</h6>
        <asp:TextBox ID="TextBox2" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="$" runat="server"> </asp:TextBox>
    </div>
            <div class="texto col-lg-12"> 
         <h6>  Descuento: </h6>
        <asp:TextBox ID="TextBox3" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="%" runat="server"> </asp:TextBox>
    </div>
        <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
         <h6> Observaciones: </h6>
        <asp:TextBox ID="TextBox4" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="" runat="server"> </asp:TextBox>
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
</asp:Content>
