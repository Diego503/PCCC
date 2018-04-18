<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Forms/Home.Master" CodeBehind="Agenda.aspx.vb" Inherits="Proyecto_CCC.Agenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="table table-hover border" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
       <h3 class=" btn-success text-xl-center"> Agenda </h3>
    <table class="table table-hover border">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#ID</th>
      <th scope="col">Cliente</th>
      <th scope="col">Nombre del negocio</th>
      <th scope="col">Fecha de visita</th>
      <th scope="col">Encargada/o de ventas</th>
      <th scope="col">Observaciones</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Denilson Chavez</td>
      <td>Acceso Digital S.A de C.V</td>
      <td>10/03/2018</td>
      <td>Juan Ayala</td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Diego Zepeda</td>
      <td>AgilSoft S.A de C.V</td>
      <td>14/03/2018</td>
      <td>Juan Ayala</td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Maibelyn Hernandez</td>
      <td>Restaurante Willy</td>
      <td>16/03/2018</td>
      <td > Juan Ayala </td>
      <td></td>
    </tr>
  </tbody>
</table> 
        </div>
</asp:Content>
