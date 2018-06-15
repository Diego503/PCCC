Public Class EditarEvento
    Inherits System.Web.UI.Page
    Private Lista As New List(Of String)
    Private ListaE As New List(Of String)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For Each i As DataRow In Consultar("SELECT * FROM sql3221722.contacto;").Rows
            cmbcontacto.Items.Add(i("nombre"))
            Lista.Add(i("idcontacto"))
        Next

        For Each i As DataRow In Consultar("SELECT * FROM sql3221722.agenda;").Rows
            cmbEventos.Items.Add("Fecha: " + i("fecha_visita") + ", Descripcion: " + i("descripcion"))
            ListaE.Add(i("idagenda"))
        Next

    End Sub

    Protected Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click
        Response.Redirect("~/Forms/EditarRegistros.aspx")
    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Try
            If (TxtDescripcion.Text IsNot "" And TxtFecha.Text IsNot "" And TxtHora.Text IsNot "" And TxtNomEncargado.Text IsNot "") Then
                Consulta("UPDATE `sql3221722`.`agenda` SET `fecha_visita` = '" & TxtFecha.Text & "', `hora_visita` = '" & TxtHora.Text & "', `encargado_visita` = '" & TxtNomEncargado.Text & "', `estado_visita` = '" & cmbestado.SelectedItem.Text & "', `descripcion` = '" & TxtDescripcion.Text & "', `contacto_idcontacto` = '" & Lista(cmbcontacto.SelectedIndex) & "' WHERE (`idagenda` = '" & Lista(cmbEventos.SelectedIndex) & "');")
                MsgBox("Evento Editado", MsgBoxStyle.Information, "Editar")
                Response.Redirect("~/Forms/Agenda.aspx")
            Else
                MsgBox("Faltan campos por llenar", MsgBoxStyle.MsgBoxHelp, "")
            End If

        Catch ex As Exception

        End Try
    End Sub
End Class