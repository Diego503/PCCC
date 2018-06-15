Public Class EditarCliente
    Inherits System.Web.UI.Page
    Private Lista As New List(Of String)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cmbCliente.Items.Clear()
        For Each item As DataRow In Consultar("select * from cliente inner join contacto on contacto.cliente_idcliente = idCliente inner join Contratos on cliente.idCliente = Contratos.cliente_idCliente where Contratos.estado = 'activo' group by cliente.idCliente").Rows
            cmbCliente.Items.Add(item("nombre"))
            Lista.Add(item("idCliente"))
        Next
    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Try
            If (TxtNombreNegocio.Text IsNot "" And TxtDireccion.Text IsNot "" And TxtCorreo.Text IsNot "" And TxtRNC.Text IsNot "" And TxtNIT.Text IsNot "" And TxtTelefono.Text IsNot "") Then
                Consulta("UPDATE `sql3221722`.`cliente` Set `nombre` = '" & TxtNombreNegocio.Text & "', `telefono` = '" & TxtTelefono.Text & "', `correo` = '" & TxtCorreo.Text & "', `direccion` = '" & TxtDireccion.Text & "', `NIT` = '" & TxtNIT.Text & "', `NRC` = '" & TxtRNC.Text & "' WHERE (`idCliente` = '" & Lista(cmbCliente.SelectedIndex) & "');")
                MsgBox("El Cliente: " & cmbCliente.SelectedItem.Text & " fue Editato.")
                Response.Redirect("~/Forms/EditarRegistros.aspx")
            Else
                MsgBox("Faltan campos por llenar ", MsgBoxStyle.MsgBoxHelp, "")
            End If
        Catch ex As Exception

        End Try


    End Sub

    Protected Sub BtnCancelar_Click(sender As Object, e As EventArgs) Handles BtnCancelar.Click
        Response.Redirect("~/Forms/EditarRegistros.aspx")
    End Sub
End Class