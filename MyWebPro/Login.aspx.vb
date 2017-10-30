Imports System.Data.OleDb

Public Class Login
    Inherits System.Web.UI.Page
    Dim _hobbiesArray()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dr As OleDbDataReader
        Conn = New OleDbConnection(Constr)
        Command = "select * from [LogData] where [Password]=@pwd"
        Cmd = New OleDbCommand(Command, Conn)
        Cmd.Parameters.AddWithValue("pwd", TextBox1.Text)
        Conn.Open()
        dr = Cmd.ExecuteReader()
        While (dr.Read())
            txtName0.Text = dr("SName").ToString()
            txtOcc0.Text = dr("Occupation").ToString
            txtPwd0.Text = dr("Password").ToString()
            radGender0.SelectedIndex = dr("Gender").ToString
            ddlCourse.SelectedIndex = dr("Course").ToString
            DOB0.Value = dr("DOB")
            _hobbiesArray = dr("Hobbies").ToString().Split(",")
            For Each i In _hobbiesArray
                ' MsgBox(i.ToString())
                chkHobbies0.Items(Val(i)).Selected = True
            Next
        End While
        Conn.Close()
        MsgBox("Success")
    End Sub

    Protected Sub ASPxFormLayout1_E9_Click(sender As Object, e As EventArgs) Handles ASPxFormLayout1_E9.Click

    End Sub
End Class