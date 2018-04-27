<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Contrato.aspx.vb" Inherits="Proyecto_CCC.Contrato1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="overflow:auto; background-color:#FAFAFA; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" >

  <h1 class="btn-group-lg btn-success text-center  rounded" style="padding:1%"> REGISTRO DE CONTRATO</h1>

     <div class="row">
    <div class="col-lg-7">
         <div class="texto col-lg-12 border-success rounded border-bottom-0 ">  
        <h6> Propietario del contrato </h6>
             <asp:DropDownList CssClass="dropdown form-control-lg border-success" ID="CmbCliente" runat="server">
<asp:ListItem> Empresa de Ejemplo 1 </asp:ListItem>
                 <asp:ListItem> Empresa de Ejemplo 1 </asp:ListItem>
             </asp:DropDownList>

    </div>
    <div class="texto col-lg-12 border-success rounded border-bottom-0 ">  
        <h6>  Fecha de inicio:</h6>
        <asp:TextBox ID="TxtFechaInicio"  CssClass="border-success rounded form-control form-control-lg" PlaceHolder="Dia" runat="server"></asp:TextBox>
    </div>
        <div class="texto col-lg-12 border-success rounded border-bottom-0">  
        <h6>  Fecha de finalización:</h6>
        <asp:TextBox ID="TxtFechaFin" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="DD/MM/AA" runat="server"></asp:TextBox>
    </div>
    <div class="texto col-lg-12"> 
         <h6>  Monto total: </h6>
        <asp:TextBox ID="TxtMonto" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="$" runat="server"> </asp:TextBox>
    </div>
            <div class="texto col-lg-12"> 
         <h6>  Tipo de facturación:</h6>
                    <asp:DropDownList CssClass="dropdown form-control-lg border-success" ID="DropDownList1" runat="server">
                    <asp:ListItem> Credito Fiscal </asp:ListItem>
                 <asp:ListItem> Comprobante </asp:ListItem>
             </asp:DropDownList>
    </div>
            <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
         <h6>  Fecha de pago: </h6>
        <asp:TextBox ID="TxtDiaPago" CssClass="border-success rounded form-control form-control-lg" PlaceHolder="DD/MM/AA" runat="server"> </asp:TextBox>
             </div>    
      <div class="texto col-lg-12" style="margin-bottom: 4%; "> 
         <h6>  Descripcion: </h6>
        <asp:TextBox ID="TxTDescripcion" CssClass="border-success rounded form-control form-control-lg" PlaceHolder=" " runat="server"> </asp:TextBox>
    </div>

        
        </div>
       </div>
        </div>


</asp:Content>
