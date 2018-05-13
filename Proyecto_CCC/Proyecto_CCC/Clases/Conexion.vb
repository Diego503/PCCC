
Imports MySql.Data.MySqlClient
Public Module Conexion

    'Public cadena As String = "Server=sql3.freemysqlhosting.net; Database=ql3221722; Uid=ql3221722; Pwd=j2mUFVbZM7;"
    Public cadena As String = "Server=localhost; Database=sql3221722; Uid=root; Pwd=zepedabueso; SslMode=none"
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
            Dim s As MySqlDataReader = cmd.ExecuteReader
            If (s.HasRows) Then
                Desconectar()
                Return True
            Else
                Desconectar()
                Return False
            End If
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
            Desconectar()
            Return False
        End Try
    End Function

    Function Consultar(ByRef Query As String) As DataTable
        Dim Datos As DataTable = New DataTable()
        Try
            Conectar()
            Dim Obj As MySqlDataAdapter = New MySqlDataAdapter(Query, Conexion)
            Obj.Fill(Datos)
            Desconectar()
            Return Datos
        Catch ex As Exception
            'MsgBox(ex.Message.ToString)
            Desconectar()
            Return Datos
        End Try
    End Function

    Public Function GetLastID(tabla As String, idnombre As String) As Integer
        Try
            Dim i As Integer
            Conectar()
            cmd = New MySqlCommand("SELECT max(idCliente) FROM sql3221722.cliente;", Conexion)
            Dim s As MySqlDataReader = cmd.ExecuteReader()
            While s.Read()
                i = s.GetValue(0)
                Exit While
            End While

            Desconectar()
            Return i
        Catch ex As Exception
            'MsgBox(ex.Message.ToString)
            Return 0
        End Try
    End Function

    Public Function GetID(nombre As String) As Integer
        Try
            Dim i As Integer
            Conectar()
            cmd = New MySqlCommand("SELECT idCliente FROM sql3221722.cliente where cliente.nombre = '" & nombre & "';", Conexion)
            Dim s As MySqlDataReader = cmd.ExecuteReader()
            While s.Read()
                i = s.GetValue(0)
                Exit While
            End While

            Desconectar()
            Return i
        Catch ex As Exception
            'MsgBox(ex.Message.ToString)
            Return 0
        End Try
    End Function

    Public Sub Desconectar()
        Try
            Conexion.Close()
        Catch ex As Exception
            'MsgBox(ex.Message.ToString)
        End Try
    End Sub
End Module
