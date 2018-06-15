Public Class EditarRegistros
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnEditarCliente_Click(sender As Object, e As EventArgs) Handles BtnEditarCliente.Click
        Response.Redirect("~/Forms/EditarCliente.aspx")
    End Sub

    Protected Sub BtnContacto_Click(sender As Object, e As EventArgs) Handles BtnContacto.Click
        Response.Redirect("~/Forms/EditarContacto.aspx")
    End Sub

    Protected Sub BtnEditarEvento_Click(sender As Object, e As EventArgs) Handles BtnEditarEvento.Click
        Response.Redirect("~/Forms/EditarEvento.aspx")
    End Sub

    Protected Sub BtnEditarContrato_Click(sender As Object, e As EventArgs) Handles BtnEditarContrato.Click
        Response.Redirect("~/Forms/EditarContrato.aspx")
    End Sub

    Protected Sub BtnEditarPromocion_Click(sender As Object, e As EventArgs) Handles BtnEditarPromocion.Click
        Response.Redirect("~/Forms/EditarPromociones.aspx")
    End Sub
End Class