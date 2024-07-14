Public Class ADMINPROJOUT
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
    Private Sub ADMINPROJOUT_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        Label2.Text = Date.Now.ToString("hh:mm tt")
        BunifuMaterialTextbox1.Text = TechList.PLID
        BunifuMaterialTextbox2.Text = TechList.PLP
        BunifuMaterialTextbox3.Text = TechList.PLN
        BunifuMaterialTextbox4.Text = Date.Now.ToString("MMM dd, yyyy")

    End Sub
    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        TechList.ActivityAdmin = TechList.ActivityAdmin & "Log Updated, "
        nonquery("update bim0kocn6y1cl68dqubs.projector set User = '" & "NA" & "', Status = '" & "Available" & "' where ProjectorID = '" & TechList.PID2 & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.projector set User = '" & "NA" & "', Status = '" & "Available" & "' where ProjectorID = '" & TechList.PID2 & "'")
        nonquery("update bim0kocn6y1cl68dqubs.plog set TimeOut = '" & Label2.Text & "' where LogID = '" & TechList.PLID & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.plog set TimeOut = '" & Label2.Text & "' where LogID = '" & TechList.PLID & "'")
        MsgBox("Projector Successfully Timed Out", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        mypopulate("select * from bim0kocn6y1cl68dqubs.projector", ADMINPROJ.DataGridView1)
        OpenChildForm(New ADMINPROJ)
        Me.Close()

    End Sub
End Class