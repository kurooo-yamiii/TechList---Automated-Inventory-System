Public Class USERMYREPORT

    Private currentChildform As Form = Nothing
    Private Sub OpenChildForm(childForm As Form)
        If currentChildform IsNot Nothing Then
            currentChildform.Close()
        End If
        currentChildform = childForm
        childForm.TopLevel = False
        childForm.FormBorderStyle = FormBorderStyle.None
        childForm.Dock = DockStyle.Fill
        USERMAMA.PanelDesktop.Controls.Add(childForm)
        childForm.BringToFront()
        childForm.Show()
        USERMAMA.lblFormTite.Text = childForm.Text
    End Sub

    Private Sub USERMYREPORT_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        mypopulate("select ReportID, AdminInCharge, ToolsNEquipment, Casualty, DateNTime, Status from bim0kocn6y1cl68dqubs.report where User = '" & TechList.User & "'", DataGridView1)
    End Sub
    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        TechList.StubID = DataGridView1.Item(0, DataGridView1.CurrentRow.Index).Value
        TechList.StubProf = DataGridView1.Item(1, DataGridView1.CurrentRow.Index).Value
        TechList.StubTools = DataGridView1.Item(2, DataGridView1.CurrentRow.Index).Value
        TechList.StubCasualty = DataGridView1.Item(3, DataGridView1.CurrentRow.Index).Value
        TechList.StubDate = DataGridView1.Item(4, DataGridView1.CurrentRow.Index).Value
        TechList.StubStatus = DataGridView1.Item(5, DataGridView1.CurrentRow.Index).Value
        MAJORREPORTSTUB.Show()
    End Sub
End Class