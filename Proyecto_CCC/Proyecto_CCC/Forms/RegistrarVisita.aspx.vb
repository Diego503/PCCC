﻿Public Class RegistrarVisita
    Inherits System.Web.UI.Page

    Public POST As Boolean = True


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (POST = True) Then
            POST = False
        Else
            POST = True
        End If
        For Each i As DataRow In Consultar("SELECT * FROM sql3221722.contacto ; ").Rows
            cmbcontacto.Items.Add(i("nombre"))
        Next

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Consulta("INSERT INTO `sql3221722`.`agenda` (`fecha_visita`, `hora_visita`, `encargado_visita`, `estado_visita`, `descripcion`, `contacto_idcontacto`) VALUES ('" & TxtFecha.Text & "', '" & TxtHora.Text & "', '" & TxtNomEncargado.Text & "', '" & cmbestado.SelectedItem.Text & "', '" & TxtDescripcion.Text & "', '" & GetID(cmbcontacto.SelectedItem.Text, "sql3221722.contacto", "idcontacto") & "');")
        MsgBox("Contrato Registrado")
    End Sub
End Class