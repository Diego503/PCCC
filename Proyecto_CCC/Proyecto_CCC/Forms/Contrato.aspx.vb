Public Class Contrato1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        For i As Integer = 1 To Date.DaysInMonth(Date.Now.Year, Date.Now.Month)
            cmbdiapago.Items.Add(i)
        Next
        CmbCliente.Items.Clear()
        For Each item As DataRow In Consultar("SELECT * FROM sql3221722.cliente;").Rows
            CmbCliente.Items.Add(item("nombre"))
        Next

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim FechaInicio As Date = DateValue(TxtFechaInicio.Text)
        Dim FechaFin As Date = DateValue(TxtFechaFin.Text)
        Dim i As Double = (FechaFin - FechaInicio).TotalDays
        Consulta("INSERT INTO `sql3221722`.`contrato` (`monto`, `tipo_facturacion`, `duracion`, `fecha_inicio`, `fecha_final`, `dia_pago`, `descripcion`, `cliente_idcliente`) VALUES ('" & TxtMonto.Text & "', '" & cmbtipodefacturacion.SelectedItem.Text & "', '" & i.ToString & "', '" & TxtFechaInicio.Text & "', '" & TxtFechaFin.Text & "', '" & cmbdiapago.SelectedItem.Text & "', '" & TxTDescripcion.Text & "', '" & GetID(CmbCliente.SelectedItem.Text, "sql3221722.cliente", "idCliente") & "');")
        MsgBox("Contrato Registrado")
    End Sub
End Class