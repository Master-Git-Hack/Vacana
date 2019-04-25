Public Class DestilacionControl
    Dim _Id As Integer
    Dim _Presion_Calderas As Double
    Dim _Presion_Operacion As Double
    Dim _Temperatura_Muestra As Double
    Dim _Litros_Vinasa As Double
    Dim _Consumo_Electrico As Double
    Dim _Litros_Ordinario As Double
    Dim _Porcentaje_Ordinario As Double


    Public Property Id
        Get
            Return _Id
        End Get
        Set(ByVal value)
            _Id = value
        End Set
    End Property

    Public Property Presion_Calderas
        Get
            Return _Presion_Calderas
        End Get
        Set(ByVal value)
            _Presion_Calderas = value
        End Set
    End Property

    Public Property Presion_Operacion
        Get
            Return _Presion_Operacion
        End Get
        Set(ByVal value)
            _Presion_Operacion = value
        End Set
    End Property

    Public Property Temperatura_Muestra
        Get
            Return _Temperatura_Muestra
        End Get
        Set(ByVal value)
            _Temperatura_Muestra = value
        End Set
    End Property

    Public Property Litros_Vinasa
        Get
            Return _Litros_Vinasa
        End Get
        Set(ByVal value)
            _Litros_Vinasa = value
        End Set
    End Property

    Public Property Consumo_Electrico
        Get
            Return _Consumo_Electrico
        End Get
        Set(ByVal value)
            _Consumo_Electrico = value
        End Set
    End Property

    Public Property Litros_Ordinario
        Get
            Return _Litros_Ordinario
        End Get
        Set(ByVal value)
            _Litros_Ordinario = value
        End Set
    End Property

    Public Property Porcentaje_Ordinario
        Get
            Return _Porcentaje_Ordinario
        End Get
        Set(ByVal value)
            _Porcentaje_Ordinario = value
        End Set
    End Property

    Public Sub New()

    End Sub

    Public Sub New(ByVal _Id As Integer, ByVal _Presion_Calderas As Double, ByVal _Presion_Operacion As Double, ByVal _Temperatura_Muestra As Double, ByVal _Litros_Vinasa As Double, ByVal _Consumo_Electrico As Double, ByVal _Litros_Ordinario As Double, ByVal _Porcentaje_Ordinario As Double)
        Id = _Id
        Presion_Calderas = _Presion_Calderas
        Presion_Operacion = _Presion_Operacion
        Temperatura_Muestra = _Temperatura_Muestra
        Litros_Vinasa = _Litros_Vinasa
        Consumo_Electrico = _Consumo_Electrico
        Litros_Ordinario = _Litros_Ordinario
        Porcentaje_Ordinario = _Porcentaje_Ordinario

    End Sub
End Class
