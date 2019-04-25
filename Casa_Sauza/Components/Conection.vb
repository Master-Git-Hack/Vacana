Imports System.Data
Imports System.Data.SqlClient
Public Class Conection
    Public conexion As New SqlConnection()
    Public Sub openConection()
        Try
            conexion.ConnectionString = "sever = ; database = ; Integrated Security = True;"
            conexion.Open()
        Catch ex As Exception
            endConection()
        End Try
    End Sub

    Public Sub endConection()
        Try
            If conexion.State = ConnectionState.Open Then
                conexion.Close()
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
