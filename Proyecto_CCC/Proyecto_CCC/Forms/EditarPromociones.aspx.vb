Public Class EditarPromociones
    Inherits System.Web.UI.Page
    Private Lista As New List(Of String)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        indexp = cmbpromociones.SelectedIndex
        cmbpromociones.Items.Clear()
        For Each item As DataRow In Consultar("SELECT * FROM sql3221722.promociones where promociones.fechafin >= curdate()").Rows
            cmbpromociones.Items.Add(item("nombre"))
            Lista.Add(item("idpromociones"))
        Next
        cmbpromociones.SelectedIndex = indexp
    End Sub

    Protected Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click
        Response.Redirect("~/Forms/EditarRegistros.aspx")
    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Try
            If (txtAplicadesde.Text IsNot "" And TxtDescuento.Text IsNot "" And Txtfechafin.Text IsNot "" And Txtfechainicio.Text IsNot "" And Txtnombreprom.Text IsNot "" And txtdescripcion.Text IsNot "") Then
                Dim FechaInicio As Date = DateValue(Txtfechainicio.Text)
                Dim FechaFin As Date = DateValue(Txtfechafin.Text)
                If FechaInicio >= Date.Today And FechaFin > FechaInicio Then
                    Consulta("UPDATE `sql3221722`.`promociones` SET `nombre` = '" & Txtnombreprom.Text & "', `fechafin` = '" & Txtfechafin.Text & "', `fechainicio` = '" & Txtfechainicio.Text & "', `descuento` = '" & TxtDescuento.Text & "', `restriccion` = '" & txtAplicadesde.Text & "', `descripcion` = '" & txtdescripcion.Text & "' WHERE (`idpromociones` = '" & Lista(cmbpromociones.SelectedIndex) & "');")
                    MsgBox("Promocion Editada", MsgBoxStyle.Information, "Editar")
                    Response.Redirect("~/Forms/Agenda.aspx")
                Else
                    MsgBox("Las fechas no son correctas, la fecha fin debe ser mayor a la de inicio", MsgBoxStyle.Exclamation, "Registro")
                End If
            Else
                MsgBox("Faltan campos por llenar ", MsgBoxStyle.MsgBoxHelp, "")
            End If
        Catch ex As Exception

        End Try

    End Sub
End Class