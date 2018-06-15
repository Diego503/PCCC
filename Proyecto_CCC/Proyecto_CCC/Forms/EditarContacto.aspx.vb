Public Class EditarContacto
    Inherits System.Web.UI.Page
    Private Lista As New List(Of String)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cmbContacto.Items.Clear()
        For Each item As DataRow In Consultar("select * from contacto").Rows
            cmbContacto.Items.Add(item("nombre"))
            Lista.Add(item("idcontacto"))
        Next
    End Sub

    Protected Sub BtnCancelar_Click(sender As Object, e As EventArgs) Handles BtnCancelar.Click
        Response.Redirect("~/Forms/EditarRegistros.aspx")
    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Try
            If (TxtContacto.Text IsNot "" And TxtCorreoContacto.Text IsNot "" And TxtDireccionContacto.Text IsNot "" And TxtTelefonoContacto.Text IsNot "") Then
                Consulta("UPDATE `sql3221722`.`contacto` Set `nombre` = '" & TxtContacto.Text & "', `telefono` = '" & TxtTelefonoContacto.Text & "', `correo` = '" & TxtCorreoContacto.Text & "', `direccion` = '" & TxtDireccionContacto.Text & "' WHERE (`idcontacto` = '" & Lista(cmbContacto.SelectedIndex) & "');")
                MsgBox("El Contacto: " & cmbContacto.SelectedItem.Text & " fue Editato.")
                Response.Redirect("~/Forms/EditarRegistros.aspx")
            Else
                MsgBox("Faltan campo por llenar", MsgBoxStyle.MsgBoxHelp, "")
            End If

        Catch ex As Exception

        End Try

    End Sub
End Class