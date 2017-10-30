Imports System.Data.OleDb
Imports DevExpress.Web.Internal

Public Class Register
    Inherits System.Web.UI.Page
    
    Dim _selectedCourse As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub ASPxFormLayout1_E8_Click(sender As Object, e As EventArgs) Handles ASPxFormLayout1_E8.Click
        'Dim builder As New StringBuilder()
        'Dim delimiter = ""
        Dim seprator = ""
        For i = 0 To chkHobbies.Items.Count - 1
            If chkHobbies.Items(i).Selected Then
                'builder.Append(delimiter)
                'builder.Append(chkHobbies.Items(i).Index)
                'delimiter = ","
                _selectedCourse &= seprator & chkHobbies.Items(i).Index
                seprator = ","
            End If
        Next
        MsgBox(_selectedCourse)
        'Conn = New OleDbConnection(Constr)
        'Command = "insert into [LogData] ([SName],[Occupation],[Password],[Gender],[Course],[DOB],[Hobbies]) values (@Name,@occ,@Pwd,@Gender,@Crs,@DOB,@HBS)"
        'Cmd = New OleDbCommand(Command, Conn)
        'Cmd.Parameters.AddWithValue("Name", txtName.Text)
        'Cmd.Parameters.AddWithValue("occ", txtOcc.Text)
        'Cmd.Parameters.AddWithValue("Pwd", txtPwd.Text)
        'Cmd.Parameters.AddWithValue("Gender", radGender.SelectedIndex)
        'Cmd.Parameters.AddWithValue("Crs", ddlCourse.SelectedIndex)
        'Cmd.Parameters.AddWithValue("DOB", DOB.Date)
        'Cmd.Parameters.AddWithValue("HBS", _selectedCourse)
        'Conn.Open()
        'Cmd.ExecuteNonQuery()
        'Conn.Close()

    End Sub
End Class