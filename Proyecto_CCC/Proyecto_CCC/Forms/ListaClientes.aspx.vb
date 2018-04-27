Public Class ListaClientes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSource = Consultar("SELECT cliente.nombre as Nombre_empresa, cliente.telefono as Telefono_empresa, contacto.nombre as Nombre_contacto,  contacto.telefono as Telefono_contacto  FROM sql3221722.cliente inner join sql3221722.contacto on contacto.cliente_idcliente = cliente.idCliente")
        GridView1.DataBind()
    End Sub

End Class