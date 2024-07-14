Public Class ACCOUNTADD
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

        If Not BunifuMaterialTextbox1.Text = selectspecific("select Username from bim0kocn6y1cl68dqubs.loginn") Then

            nonquery("insert into bim0kocn6y1cl68dqubs.loginn values('" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & 0 & "','" & BunifuMaterialTextbox3.Text & "','" & 0 & "')")
            bnonquery("insert into btuuxshmsyyx30v5w9ii.loginn values('" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & 0 & "','" & BunifuMaterialTextbox3.Text & "','" & 0 & "')")
            MsgBox("Account is Successfuly ADDED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            mypopulate("select Name, Username, Password from bim0kocn6y1cl68dqubs.loginn where Admin = '" & 0 & "'", MANAGEACCOUNT.DataGridView1)
            TechList.ActivityAdmin = TechList.ActivityAdmin & "Added Account, "
            Me.Close()
            OpenChildForm(New MANAGEACCOUNT)

        Else
            MsgBox("Invalid ID, Please contact MIC for more further information about your ID", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            BunifuMaterialTextbox2.Text = ""
            BunifuMaterialTextbox1.Text = ""

        End If
    End Sub
    Private Sub BunifuMaterialTextbox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox1.KeyPress
        If BunifuMaterialTextbox1.Text.Length >= 30 Then
            If e.KeyChar <> ControlChars.Back Then
                e.Handled = True
                MsgBox("Email Should be not More then 30 Numbers", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            End If
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