Public Class RegistrarCliente
    Inherits System.Web.UI.Page
    Public cnx As Conexion = New Conexion()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click

        cnx.Consulta("INSERT INTO `cccprueba`.`cliente` ( `nombre`, `direccion`, `correo`, `telefono`, `NIT`, `NRC`, `Sucursal_idSucursal`) VALUES (" & "'" & TxtNombreNegocio.Text & "'," & "'" & TxtDireccion.Text & "'," & "'" & TxtCorreo.Text & "'," & "'" & TxtTelefono.Text & "'," & "'" & TxtNIT.Text & "'," & "'" & TxtRNC.Text & "'," & "'1');")
        cnx.Consulta("INSERT INTO `cccprueba`.`contacto` ( `nombre`, `telefono`, `correo`, `direccion`, `cliente_idcliente`) VALUES (" & "'" & TxtNombreContacto.Text & "'," & "'" & TxtTelefono.Text & "'," & "'" & TxtCorreo.Text & "'," & "'" & TxtDireccion.Text & "','1');")
        MsgBox("Se Registro el cliente y el contacto")
    End Sub
End Class