Public Class ListaContratos
    Inherits System.Web.UI.Page
    Private tabla As New DataTable()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        listacontratos.DataSource = New DataTable()
        tabla = Consultar("Select cliente.nombre as Cliente, Contratos.fechaInicio as 'Inicio de Contrato', Contratos.fechaFin as 'Finalizacion de Contrato', Contratos.dia_pago as 'Día de pago', Contratos.duracion as 'Duración' , (to_days(Contratos.fechafin) - to_days(curdate())) as 'Tiempo restante', Contratos.precio as Precio, (Contratos.precio - (Contratos.precio * (promociones.descuento / 100))) as 'Total(con Descuento)'  from cliente inner join Contratos on Contratos.cliente_idCliente = cliente.idCliente inner join promociones on promociones.idpromociones = Contratos.promociones_idpromociones where Contratos.estado = 'Activo'")
        If tabla.Rows.Count > 0 Then
            listacontratos.DataSource = tabla
            listacontratos.DataBind()
        Else
            cantclientes.Text = "No hay registros aun."
        End If
        cantclientes.Text = "Cantidad de contratos: " + tabla.Rows.Count.ToString
    End Sub
    Private Sub ActualizarTabla(query As String, i As Integer)
        listacontratos.DataSource = New DataTable()
        listacontratos.DataBind()
        tabla = Consultar(query)
        cantclientes.Text = "Cantidad de contratos: " + tabla.Rows.Count.ToString
        If tabla.Rows.Count > 0 Then
            listacontratos.DataSource = tabla
            listacontratos.DataBind()
            cantclientes.Text = "cantidad de contratos: " & tabla.Rows.Count.ToString
        ElseIf tabla.Rows.Count = 0 Then
            MsgBox("No hay contratos " + Cmb_ListaContratos.SelectedItem.Text, MsgBoxStyle.Information, "")
        ElseIf i = 1 Then
            MsgBox("No existe el contrato con el cliente: " + txt_Buscar.Text.ToUpper, MsgBoxStyle.Information, "")
        End If
    End Sub




    Protected Sub btn_Buscar_Click(sender As Object, e As EventArgs) Handles btn_Buscar.Click
        If (Cmb_ListaContratos.SelectedIndex = 0) Then
            ActualizarTabla("Select cliente.nombre as Cliente, Contratos.fechaInicio as 'Inicio de Contrato', Contratos.fechaFin as 'Finalizacion de Contrato', Contratos.dia_pago as 'Día de pago', Contratos.duracion as 'Duración' , (to_days(Contratos.fechafin) - to_days(curdate())) as 'Tiempo restante', Contratos.precio as Precio, (Contratos.precio - (Contratos.precio * (promociones.descuento / 100))) as 'Total(con Descuento)'  from cliente inner join Contratos on Contratos.cliente_idCliente = cliente.idCliente inner join promociones on promociones.idpromociones = Contratos.promociones_idpromociones where cliente.nombre = '" & txt_Buscar.Text.ToUpper & "' Contratos.estado = 'Activo'", 1)
        ElseIf (Cmb_ListaContratos.SelectedIndex = 1) Then
            ActualizarTabla("Select cliente.nombre as Cliente, Contratos.fechaInicio as 'Inicio de Contrato', Contratos.fechaFin as 'Finalizacion de Contrato', Contratos.dia_pago as 'Día de pago', Contratos.duracion as 'Duración', Contratos.precio as Precio, (Contratos.precio - (Contratos.precio * (promociones.descuento / 100))) as 'Total(con Descuento)'  from cliente inner join Contratos on Contratos.cliente_idCliente = cliente.idCliente inner join promociones on promociones.idpromociones = Contratos.promociones_idpromociones where cliente.nombre  = '" & txt_Buscar.Text.ToUpper & "' Contratos.estado = 'Inactivo'", 1)
        End If
    End Sub

    Protected Sub Cmb_ListaContratos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Cmb_ListaContratos.SelectedIndexChanged
        If (Cmb_ListaContratos.SelectedIndex = 0) Then
            ActualizarTabla("Select cliente.nombre as Cliente, Contratos.fechaInicio as 'Inicio de Contrato', Contratos.fechaFin as 'Finalizacion de Contrato', Contratos.dia_pago as 'Día de pago', Contratos.duracion as 'Duración' , (to_days(Contratos.fechafin) - to_days(curdate())) as 'Tiempo restante', Contratos.precio as Precio, (Contratos.precio - (Contratos.precio * (promociones.descuento / 100))) as 'Total(con Descuento)'  from cliente inner join Contratos on Contratos.cliente_idCliente = cliente.idCliente inner join promociones on promociones.idpromociones = Contratos.promociones_idpromociones where Contratos.estado = 'Activo'", 1)
        ElseIf (Cmb_ListaContratos.SelectedIndex = 1) Then
            ActualizarTabla("Select cliente.nombre as Cliente, Contratos.fechaInicio as 'Inicio de Contrato', Contratos.fechaFin as 'Finalizacion de Contrato', Contratos.dia_pago as 'Día de pago', Contratos.duracion as 'Duración', Contratos.precio as Precio, (Contratos.precio - (Contratos.precio * (promociones.descuento / 100))) as 'Total(con Descuento)'  from cliente inner join Contratos on Contratos.cliente_idCliente = cliente.idCliente inner join promociones on promociones.idpromociones = Contratos.promociones_idpromociones where Contratos.estado = 'Inactivo'  ", 1)
        End If
    End Sub
End Class