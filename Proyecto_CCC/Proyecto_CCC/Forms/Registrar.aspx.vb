Public Class Registrar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For i As Integer = 1 To Date.DaysInMonth(Date.Now.Year, Date.Now.Month)
            cmbdiapago.Items.Add(i)
        Next

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Dim FechaInicio As Date = DateValue(TxtFechaInicio.Text)
        Dim FechaFin As Date = DateValue(TxtFechaFin.Text)
        Dim i As Double = (FechaFin - FechaInicio).TotalDays
        Consulta("INSERT INTO `sql3221722`.`cliente` (`nombre`, `telefono`, `correo`, `direccion`, `NIT`, `NRC`, `Sucursal_idSucursal`) VALUES ('" & TxtNombreNegocio.Text & "', '" & TxtTelefono.Text & "', '" & TxtCorreo.Text & "', '" & TxtDireccion.Text & "', '" & TxtNIT.Text & "', '" & TxtRNC.Text & "', '" & IDS & "');")
        Consulta("INSERT INTO `sql3221722`.`contacto` (`nombre`, `telefono`, `correo`, `direccion`, `cliente_idcliente`) VALUES ('" & TxtContacto.Text & "', '" & TxtTelefonoContacto.Text & "', '" & TxtCorreoContacto.Text & "', '" & TxtDireccionContacto.Text & "', '" & GetLastID("cliente", "idcliente").ToString & "');")
        Consulta("INSERT INTO `sql3221722`.`contrato` (`monto`, `tipo_facturacion`, `duracion`, `fecha_inicio`, `fecha_final`, `dia_pago`, `descripcion`, `cliente_idcliente`) VALUES ('" & TxtMonto.Text & "', '" & cmbtipodefacturacion.SelectedItem.Text & "', '" & i.ToString & "', '" & TxtFechaInicio.Text & "', '" & TxtFechaFin.Text & "', '" & cmbdiapago.SelectedItem.Text & "', '" & TxTDescripcion.Text & "', '" & GetLastID("cliente", "idcliente").ToString & "');")
        MsgBox("Registro Exitoso")
    End Sub
End Class