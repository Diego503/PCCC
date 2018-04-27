Public Class Home1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LBNOMBRE.Text = Usuario.Nombre
    End Sub

End Class