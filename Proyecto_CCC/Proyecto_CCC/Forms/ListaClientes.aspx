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
    <div class=" container-fluid align-items-center" style="padding: 2%" > 
        <div class="row">
            <div class="col-lg-9 ">

                <div class=" texto form-row align-self-center border-success rounded" style="background-color: #FAFAFA; padding: 5%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                    <div class="texto col-lg-12 text-center border-success rounded border-bottom btn-success">
                        <h3 style="font-size: x-large; font-weight: bold; font-style: normal">Lista de clientes  </h3>
                    </div>
                    <asp:GridView ID="GridView1" CssClass=" border-success table table-hover table-responsive-sm  " runat="server"> </asp:GridView>
                </div>
            </div>
        </div>
        </div>
</asp:Content>
