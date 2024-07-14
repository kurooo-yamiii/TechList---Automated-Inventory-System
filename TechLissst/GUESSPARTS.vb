Public Class GUESSPARTS
    Private currentChildform As Form = Nothing
    Private Sub OpenChildForm(childForm As Form)
        If currentChildform IsNot Nothing Then
            currentChildform.Close()
        End If
        currentChildform = childForm
        childForm.TopLevel = False
        childForm.FormBorderStyle = FormBorderStyle.None
        childForm.Dock = DockStyle.Fill
        GUESSMAMA.PanelDesktop.Controls.Add(childForm)
        childForm.BringToFront()
        childForm.Show()
        GUESSMAMA.lblFormTite.Text = childForm.Text
    End Sub
    Private Sub PARTS_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        BunifuCustomLabel1.Text = TechList.PCName
        mypopulate("select * from bim0kocn6y1cl68dqubs.inventorylist where ItemID = '" & TechList.PartID & "'", DataGridView1)
    End Sub
    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        OpenChildForm(New GUESSINVENTORY)
        Me.Close()
    End Sub
End Class