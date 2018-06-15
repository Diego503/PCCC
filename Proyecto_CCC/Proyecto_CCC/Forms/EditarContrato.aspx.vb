Public Class EditarContrato
    Inherits System.Web.UI.Page
    Private Lista As New List(Of String)
    Private ListaC As New List(Of String)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Lista.Clear()
        ListaC.Clear()
        indexc = cmbdiapago.SelectedIndex
        cmbdiapago.Items.Clear()
        For i As Integer = 1 To Date.DaysInMonth(Date.Now.Year, Date.Now.Month)
            cmbdiapago.Items.Add(i)
        Next
        cmbdiapago.SelectedIndex = indexc
        index = cmbCliente.SelectedIndex
        cmbCliente.Items.Clear()
        For Each item As DataRow In Consultar("select * from cliente inner join contacto on contacto.cliente_idcliente = idCliente inner join Contratos on cliente.idCliente = Contratos.cliente_idCliente where Contratos.estado = 'activo' group by cliente.idCliente").Rows
            cmbCliente.Items.Add(item("nombre"))
            Lista.Add(item("idCliente"))
        Next
        cmbCliente.SelectedIndex = index
        cmbContrato.Items.Clear()
        For Each item As DataRow In Consultar("select * from cliente inner join contacto on contacto.cliente_idcliente = idCliente inner join Contratos on cliente.idCliente = Contratos.cliente_idCliente where Contratos.estado = 'activo' and cliente.nombre = '" & cmbCliente.SelectedItem.Text & "';").Rows
            cmbContrato.Items.Add("Fecha de Contrato: " + item("fechainicio") + ", Descripcion: " + item("Descripcion"))
            ListaC.Add(item("idContratos"))
        Next
        If Not Page.IsPostBack Then
            cvFecha.ValueToCompare = Today.AddDays(1)
            cvvFecha.ValueToCompare = Today.AddDays(1)
        End If
        cmbpromociones.Items.Clear()
        cmbpromociones.Items.Add("Ninguna")
        For Each item As DataRow In Consultar("SELECT * FROM sql3221722.promociones where curdate() <= promociones.fechafin and curdate() >= promociones.fechainicio;").Rows
            cmbpromociones.Items.Add(item("nombre"))
        Next
    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Try
            If (txtfechafin.Text IsNot "" And TxtDescripcion.Text IsNot "" And Txtfechainicio.Text IsNot "" And txtmonto.Text IsNot "") Then
                Dim FechaInicio As Date = DateValue(Txtfechainicio.Text)
                Dim FechaFin As Date = DateValue(txtfechafin.Text)
                If FechaInicio >= Date.Today And FechaFin > FechaInicio Then
                    Dim i As Double = (FechaFin - FechaInicio).TotalDays
                    Consulta("UPDATE `sql3221722`.`Contratos` SET `duracion` = '" & i & "', `fechainicio` = '" & Txtfechainicio.Text & "', `fechafin` = '" & txtfechafin.Text & "', `tipo_facturacion` = '" & cmbtipodefacturacion.SelectedItem.Text & "', `precio` = '" & txtmonto.Text & "', `dia_pago` = '" & cmbdiapago.SelectedItem.Text & "', `estado` = 'Activo', `descripcion` = '" & TxtDescripcion.Text & "', `promociones_idpromociones` = '" & GetID(cmbpromociones.SelectedItem.Text, "promociones", "idpromociones", "nombre") & "' WHERE (`idContratos` = '" & ListaC(cmbContrato.SelectedIndex) & "');")
                    MsgBox("El Contrato del Cliente: " & cmbCliente.SelectedItem.Text & " fue Editato.")
                    Response.Redirect("~/Forms/EditarRegistros.aspx")
                End If
            Else
                MsgBox("Faltan campos por llenar ", MsgBoxStyle.MsgBoxHelp, "")
            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub BtnCancelar_Click(sender As Object, e As EventArgs) Handles BtnCancelar.Click
        Response.Redirect("~/Forms/EditarRegistros.aspx")
    End Sub

    Protected Sub cmbCliente_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbCliente.SelectedIndexChanged
        index = cmbCliente.SelectedIndex
        cmbContrato.Items.Clear()
        For Each item As DataRow In Consultar("select * from cliente inner join contacto on contacto.cliente_idcliente = idCliente inner join Contratos on cliente.idCliente = Contratos.cliente_idCliente where Contratos.estado = 'activo' and cliente.nombre = '" & cmbCliente.SelectedItem.Text & "';").Rows
            cmbContrato.Items.Add("Fecha de Contrato: " + item("fechainicio") + ", Descripcion: " + item("Descripcion"))
            ListaC.Add(item("idContratos"))
        Next
    End Sub
End Class