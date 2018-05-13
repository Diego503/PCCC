Public Class Promociones
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Txtfechainicio.Text = Date.Today.ToString
    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim FechaInicio As Date = DateValue(Txtfechainicio.Text)
        Dim FechaFin As Date = DateValue(Txtfechafin.Text)
        Consulta("INSERT INTO `sql3221722`.`promociones` (`nombre`, `fecha-inicio`, `fehca-fin`, `descuento`, `restriccion`, `descripcion`) VALUES ('" & Txtnombreprom.Text & "', '" & Txtfechainicio.Text & "', '" & Txtfechafin.Text & "', '" & TxtDescuento.Text & "', '" & txtAplicadesde.Text & "', '" & TxtDescuento.Text & "');")
        MsgBox("regitrado")
    End Sub
End Class