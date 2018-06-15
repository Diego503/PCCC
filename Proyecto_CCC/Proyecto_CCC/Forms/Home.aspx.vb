Public Class Home1
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LBNOMBRE.Text = Usuario.Nombre
        For Each row As DataRow In Consultar("SELECT idContratos, (to_days(Contratos.fechafin) - to_days(curdate())) as restante  FROM Contratos").Rows
            If (row("restante") <= 0) Then
                Consulta("UPDATE `sql3221722`.`Contratos` SET `estado` = 'Inactivo' WHERE (`idContratos` = '" & row("idContratos") & "');")
            End If
        Next
        For Each row As DataRow In Consultar("SELECT idagenda, fecha_visita FROM agenda").Rows
            If (row("fecha_visita") <= Date.Today) Then
                Consulta("UPDATE `sql3221722`.`agenda` SET `estado_visita` = 'Finalizada' WHERE (`idagenda` = '" & row("idagenda") & "');")
            End If
        Next
    End Sub

End Class