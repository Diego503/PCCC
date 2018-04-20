
Imports MySql.Data.MySqlClient
Public Class Conexion

    Public cadena As String = "Username= root; Password= Root; Server=localhost; Database=cccprueba;"
    Public Conexion As MySqlConnection
    Public cmd As MySqlCommand


    Public Sub Conectar()
        Try
            Conexion = New MySqlConnection(cadena)
            Conexion.Open()
        Catch ex As Exception
            MsgBox("Error al conectar:" + ex.Message)
        End Try
    End Sub

    Function Consulta(ByRef Query As String) As Boolean
        Try
            Conectar()
            cmd = New MySqlCommand(Query, Conexion)
            cmd.ExecuteNonQuery()
            Dim s As MySqlDataReader = cmd.ExecuteReader
            If (s.HasRows) Then
                Desconectar()
                Return True
            Else
                Desconectar()
                Return False
            End If
        Catch ex As Exception
            Return False
        End Try
    End Function

    Function Consultar(ByRef Query As String) As DataSet
        Dim Datos As DataSet = New DataSet()
        Try
            Conectar()
            Dim Obj As MySqlDataAdapter = New MySqlDataAdapter(Query, Conexion)
            Obj.Fill(Datos, "Tabla")
            Return Datos
            Desconectar()
        Catch ex As Exception
            Return Datos
        End Try
    End Function

    Public Sub Desconectar()
        Try
            Conexion.Close()
        Catch ex As Exception
        End Try
    End Sub
End Class
