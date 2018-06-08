Public Class ListaContratos
    Inherits System.Web.UI.Page
    Private tabla As New DataTable()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        listacontratos.DataSource = Consultar("select cliente.nombre as Cliente, Contratos.fechaInicio as 'Inicio de Contrato', Contratos.fechaFin as 'Finalizacion de Contrato', Contratos.dia_pago as 'Día de pago' , Contratos.precio as Precio, Contratos.duracion as 'Duración' from cliente, Contratos where cliente_idCliente = idCliente;")
        listacontratos.DataBind()
    End Sub
    Private Sub ActualizarTabla(query As String, i As Integer)
        tabla = Consultar(query)
        If tabla.Rows.Count > 0 Then
            listacontratos.DataSource = tabla
            listacontratos.DataBind()
            cantclientes.Text = "cantidad de contratos: " & tabla.Rows.Count.ToString
        ElseIf i = 0 Then
            MsgBox("No hay contratos " + Cmb_ListaContratos.SelectedItem.Text, MsgBoxStyle.Information, "")
        ElseIf i = 1 Then
            MsgBox("No existe el contrato: " + txt_Buscar.Text.ToUpper, MsgBoxStyle.Information, "")
        End If
    End Sub


    Protected Sub btn_Buscar_Click(sender As Object, e As EventArgs) Handles btn_Buscar.Click

        ActualizarTabla("select cliente.nombre as Cliente, Contratos.fechaInicio as 'Inicio de Contrato', Contratos.fechaFin as 'Finalizacion de Contrato', Contratos.dia_pago as 'Día de pago' , Contratos.precio as Precio, Contratos.duracion as 'Duración' from cliente  inner join Contratos on cliente.idCliente = Contratos.cliente_idCliente where cliente.nombre  LIKE'" & txt_Buscar.Text.ToUpper & "%'", 1)
    End Sub
End Class