Public Class ListaClientes
    Inherits System.Web.UI.Page
    Private tabla As New DataTable()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        tabla = Consultar("select cliente.nombre as Nombre, cliente.direccion as Dirección, cliente.telefono as Teléfono, cliente.correo as Correo, contacto.nombre as Empresa from cliente, contacto where cliente_idcliente = idCliente ;")
        listaclientes.DataSource = tabla
        listaclientes.DataBind()
        cantclientes.Text = "cantidad de clientes: " & tabla.Rows.Count.ToString
    End Sub




End Class