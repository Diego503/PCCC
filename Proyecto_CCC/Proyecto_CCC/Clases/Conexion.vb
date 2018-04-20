
Imports MySql.Data.MySqlClient
Public Class Conexion

    Public cadena As String = "Username= root; Password= Root; Server=localhost; Database=cccprueba;"
    Public Conexion As MySqlConnection
    Public cmd As MySqlCommand


    Public Sub Conectar()
        Try
            Conexion = New MySqlConnection(cadena)
            Conexion.Open()
            MsgBox("Conexion Con Exito")
        Catch ex As Exception
            MsgBox("Error al conectar:" + ex.Message)
        End Try
    End Sub

End Class
