Imports System.Data.OleDb
Imports DevExpress.Web

Module Module1
    Public Const Constr As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Hackeriya Balam\Documents\MyDB.accdb"
    Public Conn As OleDbConnection
    Public Command As String
    Public Cmd As OleDbCommand
    Public Function GetSelectedIndices(list As ASPxCheckBoxList)
        Dim selectedIndex As String = ""
        Dim seprator = ""
        For i = 0 To list.Items.Count - 1
            If list.Items(i).Selected Then
                selectedIndex &= seprator & list.Items(i).Index
                seprator = ","
            End If
        Next
        Return selectedIndex
    End Function
End Module
