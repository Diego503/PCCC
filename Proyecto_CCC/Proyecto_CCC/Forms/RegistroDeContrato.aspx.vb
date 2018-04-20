Public Class RegistroDeContrato
    Inherits System.Web.UI.Page
    Dim cnx As Conexion = New Conexion()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        cnx.Consulta("INSERT INTO `cccprueba`.`contrato` (`duracion`, `fecha_inicio`, `fecha_final`, `tipo_facturacion`, `descripcion`, `precio`, `dia_pago`) VALUES (" & "'12'," & "'" & TxtFechaInicio.Text & "'," & "'" & TxtFechaFin.Text & "'," & "'" & TxtTipoFactuacion.Text & "'," & "'" & TxTDescripcion.Text & "'," & "'" & TxtMonto.Text & "'," & "'" & TxtDiaPago.Text & "');")
    End Sub
End Class