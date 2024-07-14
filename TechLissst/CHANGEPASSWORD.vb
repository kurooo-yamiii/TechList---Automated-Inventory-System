Public Class CHANGEPASSWORD

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

    Private Sub CHANGEPASSWORD_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        If TechList.Color = 1 Then
            Button4.Visible = False
            Button1.Visible = True
        Else
            Button4.Visible = True
            Button1.Visible = False
        End If
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Not BunifuMaterialTextbox1.Text = TechList.Pass Then
            MsgBox("Incorrect Old Password", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            BunifuMaterialTextbox1.Text = "PASSWORD"
            BunifuMaterialTextbox2.Text = "PASSWORD"
            BunifuMaterialTextbox3.Text = "PASSWORD"
        ElseIf Not BunifuMaterialTextbox2.Text = BunifuMaterialTextbox3.Text Then
            MsgBox("New Password and Re-Type Password doesn't match", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            BunifuMaterialTextbox1.Text = "PASSWORD"
            BunifuMaterialTextbox2.Text = "PASSWORD"
            BunifuMaterialTextbox3.Text = "PASSWORD"
        Else
            TechList.ActivityAdmin = TechList.ActivityAdmin & "Change Pas, "
            nonquery("update bim0kocn6y1cl68dqubs.loginn set Password = '" & BunifuMaterialTextbox3.Text & "' where Username = '" & TechList.User & "'")
            bnonquery("update btuuxshmsyyx30v5w9ii.loginn set Password = '" & BunifuMaterialTextbox3.Text & "' where Username = '" & TechList.User & "'")
            MsgBox("Password changed Successfuly", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            BunifuMaterialTextbox1.Text = "PASSWORD"
            BunifuMaterialTextbox2.Text = "PASSWORD"
            BunifuMaterialTextbox3.Text = "PASSWORD"
            Me.Close()
            OpenChildForm(New HOME)
        End If
    End Sub
    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        If Not BunifuMaterialTextbox1.Text = TechList.Pass Then
            MsgBox("Incorrect Old Password", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            BunifuMaterialTextbox1.Text = "PASSWORD"
            BunifuMaterialTextbox2.Text = "PASSWORD"
            BunifuMaterialTextbox3.Text = "PASSWORD"
        ElseIf Not BunifuMaterialTextbox2.Text = BunifuMaterialTextbox3.Text Then
            MsgBox("New Password and Re-Type Password doesn't match", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            BunifuMaterialTextbox1.Text = "PASSWORD"
            BunifuMaterialTextbox2.Text = "PASSWORD"
            BunifuMaterialTextbox3.Text = "PASSWORD"
        Else
            TechList.ActivityAdmin = TechList.ActivityAdmin & "Change Pas, "
            nonquery("update bim0kocn6y1cl68dqubs.loginn set Password = '" & BunifuMaterialTextbox3.Text & "' where Username = '" & TechList.User & "'")
            bnonquery("update btuuxshmsyyx30v5w9ii.loginn set Password = '" & BunifuMaterialTextbox3.Text & "' where Username = '" & TechList.User & "'")
            MsgBox("Password changed Successfuly", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            BunifuMaterialTextbox1.Text = "PASSWORD"
            BunifuMaterialTextbox2.Text = "PASSWORD"
            BunifuMaterialTextbox3.Text = "PASSWORD"
            Me.Close()
            OpenChildForm(New HOME)
        End If
    End Sub

    Private Sub PictureBox5_Click(sender As Object, e As EventArgs) Handles PictureBox5.Click
        If BunifuMaterialTextbox1.isPassword = False Then
            BunifuMaterialTextbox1.isPassword = True
        Else
            BunifuMaterialTextbox1.isPassword = False
        End If
    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        If BunifuMaterialTextbox2.isPassword = False Then
            BunifuMaterialTextbox2.isPassword = True
        Else
            BunifuMaterialTextbox2.isPassword = False
        End If
    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        If BunifuMaterialTextbox3.isPassword = False Then
            BunifuMaterialTextbox3.isPassword = True
        Else
            BunifuMaterialTextbox3.isPassword = False
        End If
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