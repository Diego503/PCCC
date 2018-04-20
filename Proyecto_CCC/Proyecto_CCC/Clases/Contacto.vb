Public Class Contacto
    Inherits DatosComunes
    Private IDCliente As Integer

    Public Sub New(ID As Integer, Nombre As String, Telefono As Integer, Correo As String, NIT As Integer, RNC As Integer)
        MyBase.New(ID, Nombre, Telefono, Correo, NIT, RNC)
        Me.IDCliente = IDCliente
    End Sub

    Public Property GSIDCliente As Integer
        Get
            Return IDCliente
        End Get
        Set(value As Integer)
            IDCliente = value
        End Set
    End Property
End Class
