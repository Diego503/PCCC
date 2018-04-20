Public Class Login
    Inherits System.Web.UI.Page
    Dim Cnx As Conexion = New Conexion()

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        If (Cnx.Consulta("SELECT *" & " FROM usuario" & " WHERE " & "usuario.correo  = " & "'" & TxtUsuario.Text & "'" & " AND " & "usuario.contraseña  = " & "'" & TxtContraseña.Text & "'") = True) Then
            Response.Redirect("~/Forms/Home.aspx")
        Else
            MsgBox("Usuario o Contraseña incorrecta")
        End If
    End Sub

    Private Sub ActivarUsuario(ByRef Datos As DataSet)
        For i As Integer = 0 To Datos.Tables.Count
            MsgBox(Datos.Tables(0).Rows(i).ItemArray.ToString)
        Next



    End Sub

End Class