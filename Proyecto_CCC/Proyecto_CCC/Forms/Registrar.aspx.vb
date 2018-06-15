Public Class Registrar
    Inherits System.Web.UI.Page
    Private lados As String() = {"A", "B", "C", "D"}

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        index = cmbUbicacion.SelectedIndex
        indexp = cmbpromociones.SelectedIndex
        For i As Integer = 1 To Date.DaysInMonth(Date.Now.Year, Date.Now.Month)
            cmbdiapago.Items.Add(i)
        Next
        cmbpromociones.Items.Clear()
        cmbpromociones.Items.Add("Ninguna")
        For Each item As DataRow In Consultar("SELECT * FROM sql3221722.promociones where curdate() <= promociones.fechafin and curdate() >= promociones.fechainicio;").Rows
            cmbpromociones.Items.Add(item("nombre"))
        Next
        cmbUbicacion.Items.Clear()
        For Each item As DataRow In Consultar("SELECT * FROM sql3221722.medio where medio.tipo = '" & cmbtipomedio.SelectedItem.Text & "';").Rows
            cmbUbicacion.Items.Add(item("ubicacion"))
        Next
        cmbUbicacion.SelectedIndex = index
        cmbpromociones.SelectedIndex = indexp

    End Sub
    Private Sub InsertarLados(lado As String, idmedio As String)
        Consulta("INSERT INTO `sql3221722`.`lados` (`posicion`, `lados_usados`, `vencimiento`, `Mupy_idMupy`) VALUES ('" & lado & "', '1', '" & txtfechafin.Text & "', '" & idmedio & "')")
    End Sub

    Protected Sub cmbUbicacion_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbUbicacion.SelectedIndexChanged
        CheckBoxList1.Items.Clear()
        cmbUbicacion.SelectedIndex = index
        For Each item As DataRow In Consultar("SELECT * FROM sql3221722.Mupy inner join medio on medio.idMedio = Mupy.medio_idMedio where medio.ubicacion = '" & cmbUbicacion.SelectedItem.Text & "';").Rows
            For i As Integer = 0 To item("cantidad_lado") - 1
                CheckBoxList1.Items.Add(lados(i))
            Next
        Next
    End Sub

    Protected Sub cmbtipomedio_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbtipomedio.SelectedIndexChanged
        cmbUbicacion.Items.Clear()
        For Each item As DataRow In Consultar("SELECT * FROM sql3221722.medio where medio.tipo = '" & cmbtipomedio.SelectedItem.Text & "';").Rows
            cmbUbicacion.Items.Add(item("ubicacion"))
        Next
        If cmbtipomedio.SelectedItem.Text = "mupi" Then
            RegistroDeMupys.Visible = True
            RegistroDePantalla.Visible = False
        Else
            RegistroDeMupys.Visible = False
            RegistroDePantalla.Visible = True
        End If
    End Sub

    Protected Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click
        Response.Redirect("~/Forms/ListaClientes.aspx")
    End Sub

    Protected Sub BtnInsertar_Click(sender As Object, e As EventArgs) Handles BtnInsertar.Click
        Try
            Dim FechaInicio As Date = DateValue(Txtfechainicio.Text)
            Dim FechaFin As Date = DateValue(txtfechafin.Text)
            If FechaInicio >= Date.Today And FechaFin > FechaInicio Then
                Dim i As Double = (FechaFin - FechaInicio).TotalDays
                Dim idmedio, idmupi, idpantalla As String
                If (RegistroDeMupys.Visible = True) Then
                    For Each item As DataRow In Consultar("SELECT * FROM sql3221722.Mupy inner join medio on medio.idMedio = Mupy.medio_idMedio where medio.ubicacion = '" & cmbUbicacion.SelectedItem.Text.Trim & "';").Rows
                        idmupi = item("idMupy")
                        idmedio = item("idMedio")
                    Next
                ElseIf (RegistroDePantalla.Visible = True) Then
                    For Each item As DataRow In Consultar("SELECT * FROM sql3221722.pantalla inner join medio on medio.idMedio = pantalla.medio_idMedio where medio.ubicacion = '" & cmbUbicacion.SelectedItem.Text.Trim & "';").Rows
                        idpantalla = item("idpantalla")
                        idmedio = item("idMedio")
                    Next
                End If
                Consulta("INSERT INTO `sql3221722`.`cliente` (`nombre`, `telefono`, `correo`, `direccion`, `NIT`, `NRC`, `Sucursal_idSucursal`) VALUES ('" & TxtNombreNegocio.Text & "', '" & TxtTelefono.Text & "', '" & TxtCorreo.Text & "', '" & TxtDireccion.Text & "', '" & TxtNIT.Text & "', '" & TxtRNC.Text & "', '" & IDS & "');")
                Consulta("INSERT INTO `sql3221722`.`contacto` (`nombre`, `telefono`, `correo`, `direccion`, `cliente_idcliente`) VALUES ('" & TxtContacto.Text & "', '" & TxtTelefonoContacto.Text & "', '" & TxtCorreoContacto.Text & "', '" & TxtDireccionContacto.Text & "', '" & GetLastID("cliente", "idcliente").ToString & "');")
                Consulta("INSERT INTO `sql3221722`.`Contratos` (`precio`, `tipo_facturacion`, `duracion`, `fechainicio`, `fechafin`, `dia_pago`, `descripcion`, `cliente_idcliente`,`medio_idMedio`, `promociones_idpromociones`) VALUES ('" & txtmonto.Text & "', '" & cmbtipodefacturacion.SelectedItem.Text & "', '" & i.ToString & "', '" & Txtfechainicio.Text & "', '" & txtfechafin.Text & "', '" & cmbdiapago.SelectedItem.Text & "', '" & TxtDescripcion.Text & "', '" & GetLastID("cliente", "idcliente").ToString & "', '" & idmedio & "', '" & GetID(cmbpromociones.SelectedItem.Text, "promociones", "idpromociones", "nombre") & "');")
                If (RegistroDeMupys.Visible = True) Then
                    For Each val As ListItem In CheckBoxList1.Items
                        If (val.Selected = True) Then
                            InsertarLados(val.Text, idmupi)
                        End If
                    Next
                ElseIf (RegistroDePantalla.Visible = True) Then
                    Consulta("INSERT INTO `sql3221722`.`pantalla_Funcional` (`repeticiones`, `duracion`, `vigencia`, `pantalla_Funcionalcol_idPantalla`) VALUES ('" & TxtRepeticiones.Text & "', '" & TxtDuracion.Text & "', '" & txtfechafin.Text & "', '" & idpantalla & "');")
                End If
                MsgBox("Contrato Registrado", MsgBoxStyle.Information, "Registro")
                Response.Redirect("~/Forms/ListaClientes.aspx")
            Else
                MsgBox("Las fechas no son correctas, verifique que la fecha inicio no sea anterior al fecha de ahora", MsgBoxStyle.Exclamation, "Registro")
            End If
        Catch ex As Exception

        End Try

    End Sub
End Class