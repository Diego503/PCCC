Public Class Cliente
    Inherits DatosComunes
    Private NIT As Integer
    Private RNC As Integer

    Public Sub New(ID As Integer, Nombre As String, Telefono As Integer, Correo As String, NIT As Integer, RNC As Integer)
        MyBase.New(ID, Nombre, Telefono, Correo, NIT, RNC)
        Me.NIT = NIT
        Me.RNC = RNC
    End Sub

    Public Property GSNIT() As Integer
        Get
            Return NIT
        End Get
        Set(value As Integer)
            NIT = value
        End Set
    End Property
    Public Property GSRNC() As Integer
        Get
            Return RNC
        End Get
        Set(value As Integer)
            RNC = value
        End Set
    End Property
End Class
