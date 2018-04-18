Public Class RegistrarVisita
    Inherits System.Web.UI.Page

    Public POST As Boolean = True


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (POST = True) Then
            POST = False
        Else
            POST = True
        End If
    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click

    End Sub
End Class