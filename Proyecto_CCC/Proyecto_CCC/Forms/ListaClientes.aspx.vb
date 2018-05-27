Public Class ListaClientes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSource = Consultar("select cliente.nombre as Nombre, cliente.direccion as Dirección, cliente.telefono as Teléfono, cliente.correo as Correo, contacto.nombre as Empresa from cliente, contacto where cliente_idcliente = idCliente;")
        GridView1.DataBind()
    End Sub




End Class