Imports System.Data.SqlClient
Imports System.Application
Imports Excel = Microsoft.Office.Interop.Excel
Public Class Destilacion_Procedures
    Inherits Conection
    Dim newCommand As New SqlCommand
    Public Function Insertar(ByVal dataValues As DestilacionControl) As Boolean
        Try
            openConection()
            newCommand = New SqlCommand("Insertar")
            newCommand.CommandType = CommandType.StoredProcedure
            newCommand.Connection = conexion

            newCommand.Parameters.AddWithValue("@presion_vapor_calderas", dataValues.Presion_Calderas)
            newCommand.Parameters.AddWithValue("@presion_vapor_operación", dataValues.Presion_Operacion)
            newCommand.Parameters.AddWithValue("@temperatura_mosto_entrada_torre", dataValues.Temperatura_Muestra)
            newCommand.Parameters.AddWithValue("@litros_vinasa", dataValues.Litros_Vinasa)
            newCommand.Parameters.AddWithValue("@consumo_energia_electrica", dataValues.Consumo_Electrico)
            newCommand.Parameters.AddWithValue("@litros_ordinario", dataValues.Litros_Ordinario)
            newCommand.Parameters.AddWithValue("@alc_vol_ordinario", dataValues.Presion_Operacion)
            newCommand.Parameters.AddWithValue("@fecha", Date.Now.ToShortDateString())
            newCommand.Parameters.AddWithValue("@hora", Date.Now.ToShortTimeString())
            newCommand.Parameters.AddWithValue("@usuario", "juan")
            If newCommand.ExecuteNonQuery Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception
            Return False
        Finally
            endConection()
        End Try
    End Function


    Public Function exportExcel(dir As String) As String
        Dim datAdapter As SqlDataAdapter
        Dim dataSet As DataSet
        Dim myPath As String = dir + "Reporte_" & Date.Now.ToShortDateString & "_" & Date.Now.ToShortTimeString() & ".xlsx"
        Try
            openConection()
            newCommand = New SqlCommand("geTable")
            newCommand.CommandType = CommandType.StoredProcedure
            newCommand.Connection = conexion
            newCommand.Parameters.AddWithValue("@fecha",Date.Now.ToShortDateString())
            If newCommand.ExecuteNonQuery Then

                datAdapter = New SqlDataAdapter(newCommand)
                dataSet = New Data.DataSet

                datAdapter.Fill(dataSet)
                Dim i, j As Integer
                Dim xlApp As Excel.Application
                Dim xlWorkbook As Excel.Workbook
                Dim xlWorksheet As Excel.Worksheets
                Dim missValue As Object = Reflection.Missing.Value

                xlApp = New Excel.Application
                xlWorkbook = xlApp.Workbooks.Add(missValue)
                xlWorksheet = xlWorkbook.Sheets("Reporte " & Date.Now.ToShortDateString())

                For i = 0 To dataSet.Tables(0).Rows.Count - 1
                    For j = 0 To dataSet.Tables(0).Columns.Count - 1
                        xlWorksheet.Cells(i + 1, j + 1) = dataSet.Tables(0).Rows.Item(j)

                    Next
                Next
                xlWorksheet.SaveAs(myPath)
                xlWorkbook.Close()
                xlApp.Quit()
                Return myPath
            Else
                Return Nothing
            End If
        Catch ex As Exception

        Finally
            endConection()

        End Try

    End Function

End Class
