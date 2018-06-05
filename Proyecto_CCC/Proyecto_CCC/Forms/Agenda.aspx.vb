Imports System.Collections
Public Class Agenda1
    Inherits System.Web.UI.Page
    Private Fechas As DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Fechas = New DataTable()
        Fechas = Consultar("SELECT * FROM sql3221722.agenda;")
        Agenda.Caption = "Agenda de visitas"
        Agenda.FirstDayOfWeek = WebControls.FirstDayOfWeek.Sunday
        Agenda.ShowGridLines = True
        Agenda.DayStyle.HorizontalAlign = HorizontalAlign.Left
        Agenda.DayStyle.VerticalAlign = VerticalAlign.Top
        Agenda.DayStyle.Width = New Unit(85)
        Agenda.DayStyle.Height = New Unit(60)
        Agenda.OtherMonthDayStyle.BackColor = Drawing.Color.Cornsilk
    End Sub

    Protected Sub Agenda_DayRender(sender As Object, e As DayRenderEventArgs) Handles Agenda.DayRender
        For Each row As DataRow In Fechas.Rows
            If (e.Day.Date.Equals(row("fecha_visita"))) Then
                e.Cell.BackColor = Drawing.Color.AntiqueWhite
                e.Cell.ToolTip = row("hora_visita") + ClientIDSeparator === row("descripcion")
                Dim lit As New Literal()
                lit.Text = "</br> Estado: " & row("estado_visita") & "</br>" & row("encargado_visita")
                e.Cell.Controls.Add(lit)
                Dim lbl As New Label()
                lbl.Font.Size = New FontUnit(FontSize.Small)
                lbl.ForeColor = System.Drawing.Color.Blue
                e.Cell.Controls.Add(lbl)
            End If
        Next


    End Sub

    Protected Sub btnRegistrarVista_Click(sender As Object, e As EventArgs) Handles btnRegistrarVista.Click
        Response.Redirect("~/Forms/RegistrarVisita.aspx")
    End Sub
End Class