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
        Agenda.DayStyle.HorizontalAlign = HorizontalAlign.Center
        Agenda.DayStyle.VerticalAlign = VerticalAlign.Middle
        Agenda.DayStyle.Width = New Unit(100)
        Agenda.DayStyle.Height = New Unit(75)

        Agenda.OtherMonthDayStyle.BackColor = Drawing.Color.Cornsilk
    End Sub

    Protected Sub Agenda_DayRender(sender As Object, e As DayRenderEventArgs) Handles Agenda.DayRender
        For Each row As DataRow In Fechas.Rows
            If (e.Day.Date.Equals(row("fecha_visita"))) Then
                e.Cell.BackColor = Drawing.Color.AntiqueWhite
                e.Cell.ToolTip = "Descripcion de el evento:" & row("descripcion")
                Dim lit As New Literal()
                lit.Text = "</br> </hr> Estado: " & row("estado_visita").ToString & "</br>  </hr>" & "Encargado: " & row("encargado_visita") & "</br>  </hr>" & "Hora:" & row("hora_visita").ToString
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