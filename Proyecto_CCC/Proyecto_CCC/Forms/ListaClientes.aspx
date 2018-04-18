<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="ListaClientes.aspx.vb" Inherits="Proyecto_CCC.ListaClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 32px;
            height: 32px;
        }
        .auto-style3 {
            height: 26px;
            width: 194px;
        }
        .auto-style4 {
            width: 194px;
        }
        .auto-style5 {
            height: 26px;
            width: 298px;
        }
        .auto-style6 {
            width: 298px;
        }
        .auto-style7 {
            height: 26px;
            width: 1180px;
        }
        .auto-style8 {
            width: 1180px;
        }
        .auto-style9 {
            width: 32px;
            height: 32px;
            margin-left: 33px;
        }
        .auto-style10 {
            width: 356px;
        }
        .auto-style11 {
            width: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container align-items-center" style="padding: 3%" > 
    <div class="row">
    <div class="col-lg-12 ">

    <div class=" texto form-row align-self-center border-success rounded" style="background-color:#FAFAFA; padding: 5%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
    <div class="texto col-lg-12 text-center border-success rounded border-bottom btn-success" > <h3 style="font-size: x-large; font-weight: bold; font-style: normal"> Lista de clientes  </h3> </div>
        <table style="width:100%; margin-top: 2%;" >
            <tr>
                <td class="auto-style11" style="font-style: oblique;  text-align:center; font-weight: bold">Buscar:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Width="353px"></asp:TextBox>
                </td>
                <td>
                    <img class="auto-style9" src="../img/search.png" /></td>
            </tr>
        </table>
        <br />
        <br />
    <br />
    
     

            
         
    
     

            
           <table style="width:100%;">
               <tr>
                   <td aria-orientation="horizontal" class="auto-style7" rowspan="1" style="font-weight: bold">Clientes</td>
                   <td class="auto-style5" style="font-weight: bold">Contrato</td>
                   <td class="auto-style3" style="font-weight: bold">Editar</td>
                   <td class="auto-style1" style="font-weight: bold">Eliminar</td>
               </tr>
               <tr>
                   <td class="auto-style8">Juan Perez</td>
                   <td class="auto-style6">
                       <a href="#"><img class="auto-style2" src="../img/view%20(2).png" /></td></a>
                   <td class="auto-style4">
                       
                       <img class="auto-style2" src="../img/edit.png" /></td>
                   <td>
                       
                       <img class="auto-style2" src="../img/delete.png" /></td>
               </tr>
               <tr>
                   <td class="auto-style8">Maria Perez</td>
                   <td class="auto-style6">
                       <img class="auto-style2" src="../img/view%20(2).png" /></td>
                   <td class="auto-style4">
                       <img class="auto-style2" src="../img/edit.png" /></td>
                   <td>
                       <img class="auto-style2" src="../img/delete.png" /></td>
               </tr>
        </table>
    
     

            
         
    
     

            
           </div>
         </div>
       </div>
</asp:Content>
