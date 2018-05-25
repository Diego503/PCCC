Imports System.Collections
Public Class Agenda1
    Inherits System.Web.UI.Page

    Private schedledata As Hashtable

    Private Function GetSchudle() As Hashtable
        Dim Schedle As Hashtable = New Hashtable()
        Schedle("03/05/2018") = "Recordatorio de hoy"
        Schedle("04/05/2018") = "Recordatorio de hoy"
        Schedle("06/05/2018") = "Recordatorio de hoy"
        Schedle("05/05/2018") = "Recordatorio de hoy"
        Return Schedle
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        schedledata = GetSchudle()
        Agenda.Caption = "Agenda de visitas"
        Agenda.FirstDayOfWeek = WebControls.FirstDayOfWeek.Sunday
        Agenda.ShowGridLines = True
        Agenda.DayStyle.HorizontalAlign = HorizontalAlign.Left
        Agenda.DayStyle.VerticalAlign = VerticalAlign.Top
        Agenda.DayStyle.Width = New Unit(75)
        Agenda.DayStyle.Height = New Unit(50)
        Agenda.OtherMonthDayStyle.BackColor = Drawing.Color.Cornsilk
    End Sub

    Protected Sub Agenda_DayRender(sender As Object, e As DayRenderEventArgs) Handles Agenda.DayRender
        If (schedledata(e.Day.Date.ToShortDateString()) IsNot Nothing) Then
            Dim lbl As New Label()
            lbl.Text = schedledata(e.Day.Date.ToShortDateString()).ToString()
            lbl.Font.Size = New FontUnit(FontSize.Small)
            lbl.ForeColor = System.Drawing.Color.Blue
            e.Cell.Controls.Add(lbl)
        End If
    End Sub

    Protected Sub btnRegistrarVista_Click(sender As Object, e As EventArgs) Handles btnRegistrarVista.Click
        Response.Redirect("~/Forms/RegistrarVisita.aspx")
    End Sub
End Class