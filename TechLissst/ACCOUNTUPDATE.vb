Public Class ACCOUNTUPDATE


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
    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        nonquery("update bim0kocn6y1cl68dqubs.loginn set Password = '" & BunifuMaterialTextbox2.Text & "', Name = '" & BunifuMaterialTextbox3.Text & "' where Username = '" & BunifuMaterialTextbox1.Text & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.loginn set Password = '" & BunifuMaterialTextbox2.Text & "', Name = '" & BunifuMaterialTextbox3.Text & "' where Username = '" & BunifuMaterialTextbox1.Text & "'")
        MsgBox("Account is Successfuly UPDATED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        mypopulate("select Name, Username, Password from bim0kocn6y1cl68dqubs.loginn where Admin = '" & 0 & "'", MANAGEACCOUNT.DataGridView1)
        TechList.ActivityAdmin = TechList.ActivityAdmin & "Updated Account,"
        OpenChildForm(New MANAGEACCOUNT)
        Me.Close()

    End Sub

    Private Sub INVENTORYUPDATE_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        BunifuMaterialTextbox1.Text = TechList.Username
        BunifuMaterialTextbox2.Text = TechList.Password
        BunifuMaterialTextbox3.Text = TechList.Name
    End Sub

End Class