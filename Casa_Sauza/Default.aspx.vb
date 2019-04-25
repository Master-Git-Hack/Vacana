Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim Nombres As New List(Of String)
        Nombres.AddRange(New String() {"Nuevo", "Usuado", "valores", "Tiempo", "No se"})
        Dim Valores As New List(Of Integer)
        Valores.AddRange(New Integer() {1, 2, 3, 4, 5})
        Grafica1.Series("Series1").Points.DataBindXY(Nombres, Valores)
        Nombres.Add("Cambio")
        Valores.Add(55)
        Grafica1.Series("Series1").Points.DataBindXY(Nombres, Valores)
    End Sub
End Class