Public Class REPORTMINORUPDATE
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

        TechList.ActivityAdmin = TechList.ActivityAdmin & "Updated Report, "
        nonquery("update bim0kocn6y1cl68dqubs.mreport set User = '" & BunifuMaterialTextbox1.Text & "', Problem = '" & BunifuMaterialTextbox2.Text & "', Searched = '" & BunifuMaterialTextbox3.Text & "', Date = '" & Label2.Text & "' where ReportID = '" & Label1.Text & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.mreport set User = '" & BunifuMaterialTextbox1.Text & "', Problem = '" & BunifuMaterialTextbox2.Text & "', Searched = '" & BunifuMaterialTextbox3.Text & "', Date = '" & Label2.Text & "' where ReportID = '" & Label1.Text & "'")
        mypopulate("select * from bim0kocn6y1cl68dqubs.mreport", REPORTMINOR.DataGridView1)
        MsgBox("Report is Successfuly UPDATED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        OpenChildForm(New REPORTMINOR)
        Me.Close()

    End Sub

    Private Sub INVENTORYUPDATE_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        BunifuMaterialTextbox1.Text = TechList.ReportU
        BunifuMaterialTextbox2.Text = TechList.ToolsM
        BunifuMaterialTextbox3.Text = TechList.Searched

        Label1.Text = TechList.ReportMID
        Label2.Text = Date.Now.ToString("MMM dd, yyyy hh:mm tt")
    End Sub

    Private Sub BunifuMaterialTextbox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox1.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub

    Private Sub BunifuMaterialTextbox2_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox2.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub

    Private Sub BunifuMaterialTextbox3_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox3.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
End Class