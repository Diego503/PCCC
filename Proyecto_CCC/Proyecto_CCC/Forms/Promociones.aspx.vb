﻿Public Class Promociones
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim FechaInicio As Date = DateValue(Txtfechainicio.Text)
        Dim FechaFin As Date = DateValue(Txtfechafin.Text)
        If FechaInicio > Date.Today And FechaFin > FechaInicio Then
            Consulta("INSERT INTO `sql3221722`.`promociones` (`nombre`, `fechainicio`, `fechafin`, `descuento`, `restriccion`, `descripcion`) VALUES ('" & Txtnombreprom.Text & "', '" & Txtfechainicio.Text & "', '" & Txtfechafin.Text & "', '" & TxtDescuento.Text & "', '" & txtAplicadesde.Text & "', '" & TxtDescuento.Text & "');")
            MsgBox("Promocion registrada", MsgBoxStyle.Information, "Registro")
            Response.Redirect("~/Forms/Agenda.aspx")
        Else
            MsgBox("Las fechas no son correctas", MsgBoxStyle.Exclamation, "Registro")
        End If
    End Sub

    Protected Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click
        Response.Redirect("~/Forms/Agenda.aspx")
    End Sub
End Class