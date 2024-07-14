Imports System.Drawing.Printing
Public Class ADMINPROJ
    Private currentChildform As Form = Nothing
    Private Sub OpenChildForm(childForm As Form)
        If currentChildform IsNot Nothing Then
            currentChildform.Close()
        End If
        currentChildform = childForm
        childForm.TopLevel = False
        childForm.FormBorderStyle = FormBorderStyle.None
        childForm.Dock = DockStyle.Fill
        Form1.PanelDesktop.Controls.Add(childForm)
        childForm.BringToFront()
        childForm.Show()
        Form1.lblFormTite.Text = childForm.Text
    End Sub
    Private Sub ADMINPROJ_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        mypopulate("select * from bim0kocn6y1cl68dqubs.projector", DataGridView1)
    End Sub

    Private Sub BunifuMaterialTextbox1_OnValueChanged(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.OnValueChanged

        If ComboBox1.Text = "" Then
            mypopulate("select * from bim0kocn6y1cl68dqubs.projector where " & "ProjectorID" & " LIKE '%" & BunifuMaterialTextbox1.Text & "%'", DataGridView1)
        Else
            mypopulate("select * from bim0kocn6y1cl68dqubs.projector where " & ComboBox1.Text & " LIKE '%" & BunifuMaterialTextbox1.Text & "%'", DataGridView1)
        End If

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim ProjectorID As String
        ProjectorID = DataGridView1.Item(0, DataGridView1.CurrentRow.Index).Value
        TechList.ActivityAdmin = TechList.ActivityAdmin & "Deleted Item, "
        nonquery("delete from bim0kocn6y1cl68dqubs.projector where ProjectorID = '" & ProjectorID & "'")
        mypopulate("select * from bim0kocn6y1cl68dqubs.projector", DataGridView1)
        MsgBox("Projector selected is successfully Deleted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        OpenChildForm(New ADMINPROJADD)
        Me.Hide()
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        TechList.ProjI = DataGridView1.Item(0, DataGridView1.CurrentRow.Index).Value
        TechList.ProjB = DataGridView1.Item(1, DataGridView1.CurrentRow.Index).Value
        TechList.ProjU = DataGridView1.Item(3, DataGridView1.CurrentRow.Index).Value
        TechList.ProjS = DataGridView1.Item(4, DataGridView1.CurrentRow.Index).Value

        OpenChildForm(New ADMINPROJBORROW)
        Me.Hide()
    End Sub

    Private Sub DataGridView1_CellContentDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentDoubleClick

        Dim User As String = DataGridView1.Item(3, DataGridView1.CurrentRow.Index).Value
        If User = "NA" Then
            MsgBox("The selected Projector is Available", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        ElseIf User = "Out of Order" Then
            MsgBox("The selected Projector is Defective", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        Else
            Dim Proj As String = DataGridView1.Item(0, DataGridView1.CurrentRow.Index).Value
            TechList.PID2 = DataGridView1.Item(0, DataGridView1.CurrentRow.Index).Value
            TechList.PLID = selectspecific("select LogID from bim0kocn6y1cl68dqubs.plog where Projector = '" & Proj & "' and TimeOut = '" & "" & "'")
            TechList.PLP = DataGridView1.Item(3, DataGridView1.CurrentRow.Index).Value
            TechList.PLN = selectspecific("select TimeIn from bim0kocn6y1cl68dqubs.plog where Projector = '" & Proj & "' and TimeOut = '" & "" & "'")
            OpenChildForm(New ADMINPROJOUT)
            Me.Hide()

        End If
    End Sub
    Private Sub BunifuMaterialTextbox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox1.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub

    Private Bitmap As Bitmap
    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim Count As Integer
        Dim Height As Integer = DataGridView1.Height
        Count = DataGridView1.RowCount + 1
        DataGridView1.Height = Count * DataGridView1.RowTemplate.Height
        Bitmap = New Bitmap(Me.DataGridView1.Width, Me.DataGridView1.Height)
        DataGridView1.DrawToBitmap(Bitmap, New Rectangle(0, 0, Me.DataGridView1.Width, Me.DataGridView1.Height))
        PrintPreviewDialog1.PrintPreviewControl.Zoom = 1
        PrintPreviewDialog1.ShowDialog()
        PrintDocument1.Print()
        DataGridView1.Height = Height
    End Sub

    Private Sub PrintDocument1_PrintPage(sender As Object, e As Printing.PrintPageEventArgs) Handles PrintDocument1.PrintPage
        e.Graphics.DrawImage(Bitmap, 30, 30)
        Dim PrintView As RectangleF = e.PageSettings.PrintableArea

        If Me.DataGridView1.Height - PrintView.Height > 0 Then
            e.HasMorePages = True
        End If
    End Sub
End Class