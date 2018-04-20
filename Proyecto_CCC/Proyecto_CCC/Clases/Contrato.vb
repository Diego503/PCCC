Public Class Contrato
    Private ID As Integer
    Private IDClietne As Integer
    Private IDPromocion As Integer
    Private Duracion As Integer
    Private FechaDeInicio As Date
    Private FechaDeFin As Date
    Private TipoFactura As String
    Private Precio As Double
    Private DiaPago As Integer
    Private Descripcion As String

    Public Sub New(iD As Integer, iDClietne As Integer, iDPromocion As Integer, duracion As Integer, fechaDeInicio As Date, fechaDeFin As Date, tipoFactura As String, precio As Double, diaPago As Integer, descripcion As String)
        Me.ID = iD
        Me.IDClietne = iDClietne
        Me.IDPromocion = iDPromocion
        Me.Duracion = duracion
        Me.FechaDeInicio = fechaDeInicio
        Me.FechaDeFin = fechaDeFin
        Me.TipoFactura = tipoFactura
        Me.Precio = precio
        Me.DiaPago = diaPago
        Me.Descripcion = descripcion
    End Sub

    Public Property GSID As Integer
        Get
            Return ID
        End Get
        Set(value As Integer)
            ID = value
        End Set
    End Property

    Public Property GSIDClietne As Integer
        Get
            Return IDClietne
        End Get
        Set(value As Integer)
            IDClietne = value
        End Set
    End Property

    Public Property GSIDPromocion As Integer
        Get
            Return IDPromocion
        End Get
        Set(value As Integer)
            IDPromocion = value
        End Set
    End Property

    Public Property GSDuracion As Integer
        Get
            Return Duracion
        End Get
        Set(value As Integer)
            Duracion = value
        End Set
    End Property

    Public Property GSFechaDeInicio As Date
        Get
            Return FechaDeInicio
        End Get
        Set(value As Date)
            FechaDeInicio = value
        End Set
    End Property

    Public Property GSFechaDeFin As Date
        Get
            Return FechaDeFin
        End Get
        Set(value As Date)
            FechaDeFin = value
        End Set
    End Property

    Public Property GSTipoFactura As String
        Get
            Return TipoFactura
        End Get
        Set(value As String)
            TipoFactura = value
        End Set
    End Property

    Public Property GSPrecio As Double
        Get
            Return Precio
        End Get
        Set(value As Double)
            Precio = value
        End Set
    End Property

    Public Property GSDiaPago As Integer
        Get
            Return DiaPago
        End Get
        Set(value As Integer)
            DiaPago = value
        End Set
    End Property
    Public Property GSDescripcion As String
        Get
            Return Descripcion
        End Get
        Set(value As String)
            Descripcion = value
        End Set
    End Property
End Class
