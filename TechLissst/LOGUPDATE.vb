Public Class LOGUPDATE

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

        TechList.ActivityAdmin = TechList.ActivityAdmin & "Updated Log, "
        nonquery("update bim0kocn6y1cl68dqubs.log set User = '" & BunifuMaterialTextbox1.Text & "', Activity = '" & BunifuMaterialTextbox2.Text & "', TimeIn = '" & BunifuMaterialTextbox3.Text & "', TimeOut = '" & BunifuMaterialTextbox4.Text & "', Date = '" & BunifuMaterialTextbox5.Text & "' where ScheduleID = '" & Label1.Text & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.log set User = '" & BunifuMaterialTextbox1.Text & "', Activity = '" & BunifuMaterialTextbox2.Text & "', TimeIn = '" & BunifuMaterialTextbox3.Text & "', TimeOut = '" & BunifuMaterialTextbox4.Text & "', Date = '" & BunifuMaterialTextbox5.Text & "' where ScheduleID = '" & Label1.Text & "'")
        MsgBox("Report is Successfuly UPDATED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        mypopulate("select * from bim0kocn6y1cl68dqubs.report", LOGHISTORY.DataGridView1)
        OpenChildForm(New LOGHISTORY)
        Me.Close()

    End Sub

    Private Sub INVENTORYUPDATE_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        BunifuMaterialTextbox1.Text = TechList.AdminInCharge
        BunifuMaterialTextbox2.Text = TechList.Block
        BunifuMaterialTextbox3.Text = TechList.TimeIn
        BunifuMaterialTextbox4.Text = TechList.TimeOut
        BunifuMaterialTextbox5.Text = TechList.Remarks
        Label1.Text = TechList.ScheduleID
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
    Private Sub BunifuMaterialTextbox4_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox4.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
    Private Sub BunifuMaterialTextbox5_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox5.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
End Class