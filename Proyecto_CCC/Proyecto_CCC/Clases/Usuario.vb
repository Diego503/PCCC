Module Usuario
    Public ID As Integer
    Public IDS As Integer
    Public Nombre As String
    Public Estado As Boolean
    Public Tipo As String
    Public index, indexc, indexp As Integer
    Public Sub SetUser(Correo As String, Contraseña As String)
        For Each linea As DataRow In Consultar("SELECT * FROM usuario  WHERE " & "usuario.correo  = " & "'" & Correo & "'" & " AND " & "usuario.contraseña  = " & "'" & Contraseña & "'").Rows
            ID = linea(0)
            Nombre = linea(1)
            Estado = True
            Tipo = linea(4)
            IDS = linea(7)
        Next
    End Sub

    Public Sub Restablecer()
        ID = 0
        IDS = 0
        Nombre = ""
        Estado = False
        Tipo = ""
    End Sub


End Module
