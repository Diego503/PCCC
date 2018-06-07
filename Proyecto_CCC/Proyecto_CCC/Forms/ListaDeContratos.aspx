<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="ListaDeContratos.aspx.vb" Inherits="Proyecto_CCC.ListaDeContratos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class=" container-fluid align-items-center" > 
        <div class="row">
            <div class="col-lg-12 ">

                
                   <br />
                        <h3 style="font-size: x-large; font-weight: bold; font-style: normal">Lista de clientes  </h3> 
                   <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Height="93px">
                       <table cellspacing="1">
                           <tr>
                               <td> <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label></td>
                               <td><asp:TextBox ID="txt_Buscar" Width="300px" CssClass="border-success rounded form-control form-control-sm" PlaceHolder="Juan Perez"  onkeypress="return LetrasN(event)" MaxLength="20"  runat="server"></asp:TextBox></td>
                               <td><asp:Button ID="btn_Buscar"  CssClass="btn-group-sm btn-success btn-sm" Width="75px" Height="35px" runat="server" Text="Buscar" /></td>
                           </tr>
                           <tr>
                               <td> </td>
                               <td>&nbsp;</td>
                           </tr>
                       </table>
                <asp:DropDownList CssClass="dropdown form-control-sm border-success" ID="Cmb_ListaClientes" runat="server" AutoPostBack="True">
            <asp:ListItem> Activos </asp:ListItem>
                 <asp:ListItem> Inactivos </asp:ListItem>
             </asp:DropDownList>
                       <br />
                    <asp:Label ID="cantclientes" runat="server" Text="Nº de contratos"></asp:Label>

                       <br />
                   </asp:Panel>
                <br />
                <br />
                
                <asp:GridView ID="listaclientes" CssClass=" border-success table table-hover table-responsive-sm  " runat="server"> </asp:GridView>
             
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
