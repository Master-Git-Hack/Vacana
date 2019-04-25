Imports System.IO
Public Class View1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = True
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
    End Sub

    Private Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Panel1.Visible = True
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
    End Sub

    Private Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        Panel1.Visible = False
        Panel2.Visible = True
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
    End Sub

    Private Sub LinkButton3_Click(sender As Object, e As EventArgs) Handles LinkButton3.Click
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = True
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
    End Sub

    Private Sub LinkButton4_Click(sender As Object, e As EventArgs) Handles LinkButton4.Click
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = True
        Panel5.Visible = False
        Panel6.Visible = False
    End Sub

    Private Sub LinkButton5_Click(sender As Object, e As EventArgs) Handles LinkButton5.Click
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = True
        Panel6.Visible = False
    End Sub

    Private Sub LinkButton6_Click(sender As Object, e As EventArgs) Handles LinkButton6.Click
        Panel1.Visible = True
        Panel2.Visible = True
        Panel3.Visible = True
        Panel4.Visible = True
        Panel5.Visible = True
        Panel6.Visible = False
    End Sub
    Private Sub LinkButton7_Click(sender As Object, e As EventArgs) Handles LinkButton7.Click
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = True

    End Sub
    Private Sub btn_reporte_Click(sender As Object, e As EventArgs) Handles btn_reporte.Click
        If IsPostBack Then
            If periodo.Value IsNot Nothing Then

                Dim addValue As New Destilacion_Procedures()
                Dim myRoute As String = addValue.exportExcel(Server.MapPath("/Src/Files/"), periodo.Value)
                If myRoute IsNot Nothing Then
                    Link_Reporte.NavigateUrl = myRoute
                    Link_Reporte.Text = "Descargar Reporte"
                End If


            End If
        End If

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim newValues As New DestilacionControl
        newValues.Consumo_Electrico = Convert.ToDouble(txt_consumo.Text)
        newValues.Litros_Ordinario = Convert.ToDouble(txt_litros_ord.Text)
        newValues.Litros_Vinasa = Convert.ToDouble(txt_litros_vinasa.Text))
    newValues.Porcentaje_Ordinario = Convert.ToDouble(txt_por_ord.Text)
    newValues.Presion_Calderas = Convert.ToDouble(txt_calderas.Text)
    newValues.Presion_Operacion = Convert.ToDouble(txt_operacion.Text)
    newValues.Temperatura_Muestra = Convert.ToDouble(txt_temp_vinasa.Text)
        Dim addValues As New Destilacion_Procedures()
        addValues.Insertar(newValues)
    End Sub
End Class
