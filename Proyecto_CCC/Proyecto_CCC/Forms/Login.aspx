<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Log.Master" CodeBehind="Login.aspx.vb" Inherits="Proyecto_CCC.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container align-items-center" style="padding: 20%" > 
    <div class="row">
     <div class="col-lg-5 text-center align-self-center"> 
         <h1 class="texto" style="color:white; text-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><strong> ILEDVIEW  </strong>  </h1>
         <h3 class=" texto" style="color:white; text-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"> "Somos tu herramienta de publicidad para tus ideas"</h3>
     </div>
    <div class="col-lg-7 ">

    <div class=" texto form-row align-self-center border-success rounded" style="background-color:#FAFAFA; padding: 5%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
    <div class="texto col-lg-12 text-center border-success rounded border-bottom" style="background-color: " > <h3> Bienvenido </h3> </div>
     <br />
    <div class="texto col-lg-12 border-success rounded border-bottom-0" style="background-color: ">  
        <h5>  Introduzca su Usuario</h5>
        <asp:TextBox ID="TxtUsuario" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Usuario" runat="server"></asp:TextBox>
    </div>
    <div class="texto col-lg-12"> 
         <h5>  Introduzca su Contraseña </h5>
        <asp:TextBox ID="TxtContraseña" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Contraseña" runat="server"> </asp:TextBox>
    </div>
            <div class="col-lg-12" style ="margin-left: 40%;">  
            <asp:Button ID="btnIngresar" CssClass="btn-group-lg btn-success rounded" runat="server" Text="Ingresar" />
            </div>
           </div>
         </div>
       </div>
    </div>
</asp:Content>
