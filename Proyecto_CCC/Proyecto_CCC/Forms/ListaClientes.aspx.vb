Public Class ListaClientes
    Inherits System.Web.UI.Page
    Private tabla As New DataTable()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        listaclientes.DataSource = Consultar("select cliente.nombre as Empresa, cliente.direccion as Dirección, cliente.telefono as Teléfono, cliente.correo as Correo, contacto.nombre as Contacto, contacto.telefono as 'Telefono Contacto' from cliente, contacto where cliente_idcliente = idCliente;")
        listaclientes.DataBind()
    End Sub

    Private Sub ActualizarTabla(query As String, i As Integer)
        tabla = Consultar(query)
        If tabla.Rows.Count > 0 Then
            ListaClientes.DataSource = tabla
            ListaClientes.DataBind()
            cantclientes.Text = "cantidad de clientes: " & tabla.Rows.Count.ToString
        ElseIf i = 0 Then
            MsgBox("No hay clientes " + Cmb_ListaClientes.SelectedItem.Text, MsgBoxStyle.Information, "")
        ElseIf i = 1 Then
            MsgBox("No existe el cliente: " + txt_Buscar.Text.ToUpper, MsgBoxStyle.Information, "")
        End If
    End Sub

    Protected Sub Cmb_ListaClientes_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Cmb_ListaClientes.SelectedIndexChanged
        ActualizarTabla("select cliente.nombre as Empresa, cliente.direccion as Dirección, cliente.telefono as Teléfono, cliente.correo as Correo, contacto.nombre as Nombre,contacto.telefono as 'Telefono Contacto' from cliente inner join contacto on contacto.cliente_idcliente = idCliente inner join Contratos on cliente.idCliente = Contratos.cliente_idCliente where Contratos.estado = '" & Cmb_ListaClientes.SelectedItem.Text & "'", 0)
    End Sub

    Protected Sub btn_Buscar_Click(sender As Object, e As EventArgs) Handles btn_Buscar.Click
        ActualizarTabla("select cliente.nombre as Empresa, cliente.direccion as Dirección, cliente.telefono as Teléfono, cliente.correo as Correo, contacto.nombre as Nombre,contacto.telefono as 'Telefono Contacto' from cliente inner join contacto on contacto.cliente_idcliente = idCliente inner join contratos on cliente.idCliente = contratos.cliente_idCliente where contratos.estado = '" & Cmb_ListaClientes.SelectedItem.Text & "' and cliente.nombre = '" & txt_Buscar.Text.ToUpper & "'", 1)
    End Sub
End Class