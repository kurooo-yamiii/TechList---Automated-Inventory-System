Public Class LOGADD

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

        Dim ScheduleID As String = selectspecific("select ScheduleID from bim0kocn6y1cl68dqubs.log")
        Label1.Text = Val(ScheduleID) + 1
        TechList.ActivityAdmin = TechList.ActivityAdmin & "Added Log, "
        nonquery("insert into bim0kocn6y1cl68dqubs.log values('" & Label1.Text & "','" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & BunifuMaterialTextbox3.Text & "','" & BunifuMaterialTextbox4.Text & "','" & BunifuMaterialTextbox5.Text & "')")
        bnonquery("insert into btuuxshmsyyx30v5w9ii.log values('" & Label1.Text & "','" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & BunifuMaterialTextbox3.Text & "','" & BunifuMaterialTextbox4.Text & "','" & BunifuMaterialTextbox5.Text & "')")
        MsgBox("Log is Successfuly ADDED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        mypopulate("select * from bim0kocn6y1cl68dqubs.log", LOGHISTORY.DataGridView1)
        OpenChildForm(New LOGHISTORY)
        Me.Close()
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