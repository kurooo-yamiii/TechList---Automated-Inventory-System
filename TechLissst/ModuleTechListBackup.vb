Imports MySql.Data.MySqlClient
Module ModuleTechListBackup

    Dim mycon As New MySqlConnection("server='btuuxshmsyyx30v5w9ii-mysql.services.clever-cloud.com';port=3306;uid='ubc2uxygi3n8lms0';password='cnXI7ZtfhW5vjJOxgugo';")

    Public Sub bnonquery(ByVal utos As String)
        Dim sqlutos As New MySqlCommand(utos, mycon)
        Try
            mycon.Open()
            sqlutos.ExecuteNonQuery()
            mycon.Close()
        Catch ex As Exception
            mycon.Close()
            MsgBox(ex.ToString)
        End Try
    End Sub
    Public Sub bmypopulate(ByVal utos As String, ByVal grid As DataGridView)
        Dim sqlutos As New MySqlCommand(utos, mycon)
        Dim adapter As New MySqlDataAdapter()
        Dim lamesa As New DataTable
        Try
            mycon.Open()
            adapter.SelectCommand = sqlutos
            adapter.Fill(lamesa)
            grid.DataSource = lamesa
            mycon.Close()
        Catch ex As Exception
            mycon.Close()
            MsgBox(ex.ToString)
        End Try
    End Sub
    Function bselectspecific(ByVal utos As String)
        Dim sqlutos As New MySqlCommand(utos, mycon)
        Dim reader As MySqlDataReader
        Dim result As String = ""
        Try
            mycon.Open()
            reader = sqlutos.ExecuteReader()
            While reader.Read()
                result = reader(0)
            End While
            mycon.Close()
            Return result
        Catch ex As Exception
            mycon.Close()
            MsgBox(ex.ToString)
            Return Nothing
        End Try
    End Function
End Module
