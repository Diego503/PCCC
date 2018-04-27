Public Class log1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnIngresar_Click(sender As Object, e As EventArgs) Handles BtnIngresar.Click
        If (Consulta("SELECT *" & " FROM usuario" & " WHERE " & "usuario.correo  = " & "'" & TxtUsuario.Text & "'" & " AND " & "usuario.contraseña  = " & "'" & TxtContraseña.Text & "'") = True Or "SELECT *" & " FROM usuario" & " WHERE " & "usuario.nombre  = " & "'" & TxtUsuario.Text & "'" & " AND " & "usuario.contraseña  = " & "'" & TxtContraseña.Text & "'") = True Then
            Response.Redirect("~/Forms/Home.aspx")
        Else
            MsgBox("Usuario o Contraseña incorrecta")
        End If
    End Sub
End Class