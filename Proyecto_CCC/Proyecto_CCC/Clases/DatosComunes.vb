Public Class DatosComunes
    Private ID As Integer
    Private Nombre As String
    Private Telefono As Integer
    Private Correo As String

    Public Sub New(ID As Integer, Nombre As String, Telefono As Integer, Correo As String, NIT As Integer, RNC As Integer)
        Me.ID = ID
        Me.Nombre = Nombre
        Me.Telefono = Telefono
        Me.Correo = Correo
    End Sub

    Public Property GSID() As Integer
        Get
            Return ID
        End Get
        Set(value As Integer)
            ID = value
        End Set
    End Property

    Public Property GSNombre() As String
        Get
            Return Nombre
        End Get
        Set(value As String)
            Nombre = value
        End Set
    End Property
    Public Property GSTelefono() As Integer
        Get
            Return Telefono
        End Get
        Set(value As Integer)
            Telefono = value
        End Set
    End Property

    Public Property GSCorreo() As String
        Get
            Return Correo
        End Get
        Set(value As String)
            Correo = value
        End Set
    End Property
End Class
