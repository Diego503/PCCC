<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="log.aspx.vb" Inherits="Proyecto_CCC.log1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> LOGIN ILEDVIEW </title>
    <link href="../Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="../Content/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-reboot.css" rel="stylesheet" />
    <link href="../Content/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body style=" overflow:hidden;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; background-image:url(../img/toamna.jpg); background-size: auto; background-repeat:no-repeat">
    <form id="form1" runat="server">
    <div class="container-fluid" >
        <div class="row">
            <div class="container-fluid col-sm-12" style=" float:left;background-size: 400px ; background-position: center center;  background-repeat:no-repeat; background-image:url(../img/logo.jpg);"> 
                 <br /><br />   <br />   <br /> <br /> <br />
            </div>
            <div class=" text-center container-fluid col-sm-12" >
                <h4 style=" color:white; text-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"> <strong> "SOMOS LA HERRAMIENTA DE PUBLICIDAD PARA TUS IDEAS" </strong>  </h4>

            </div>

             <div class=" container-fluid col-sm-12"> 
                <div class="container-fluid" style="background-size:auto; background-position: right center;  background-repeat:no-repeat; background-image:url(../img/pantalla.png);">
                       <div class="row" style="padding: 25px; ">  

                      <div class="col-sm-8" > </div>
                     <div class="col-sm-2"></div>   
                             
                      <div class="col-sm-8" > 
                      </div>
                     <div class="col-sm-2" >
                         <img style="position:center" src="../img/usuario01.png" width="75" height="75"/>
                      <asp:TextBox ID="TxtUsuario" CssClass=" border-white rounded form-control form-control-sm" PlaceHolder="Usuario" runat="server"></asp:TextBox>
                         </div>

                           <div class="col-sm-8" > 
                      </div>
                     <div class="col-sm-2">
                         <img style="position:center" src="../img/candado01.png" width="75" height="75"/>
                      <asp:TextBox ID="TxtContraseña" CssClass=" border-white rounded form-control form-control-sm" PlaceHolder="Contraseña" TextMode="Password" runat="server"></asp:TextBox>
                         </div>

                       <div class="col-sm-8" > </div>
                     <div class="col-sm-2" style=" position:center; padding: 25px; padding-left:25px;">
                         <asp:Button ID="BtnIngresar" CssClass=" btn btn-group btn-group-sm btn-info rounded" runat="server" Text="Ingresar" />
                         </div>
                       </div>

                        <br /><br />   <br />   <br /> <br /> <br /><br /><br />
                   </div>
                   
                     
            </div>
        </div>
       






    </div>
    </form>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/bootstrap.js"></script>
    <script src="../scripts/bootstrap.bundle.min.js"></script>
    <script src="../scripts/bootstrap.bundle.js"></script>
    <script src="../scripts/jquery-3.0.0.js"></script>
    <script src="../scripts/jquery-3.0.0.min.js"></script>
    <script src="../scripts/jquery-3.0.0.slim.js"></script>
    <script src="../scripts/jquery-3.0.0.slim.min.js"></script>
</body>
</html>
