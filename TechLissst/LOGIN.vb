Public Class LOGIN
    Private IsFormBeingDragged As Boolean = False
    Private MouseDownX As Integer
    Private MouseDownY As Integer

    Private Sub LOGIN_MouseDown(sender As Object, e As MouseEventArgs) Handles MyBase.MouseDown
        If e.Button = MouseButtons.Left Then
            IsFormBeingDragged = True
            MouseDownX = e.X
            MouseDownY = e.Y
        End If
    End Sub

    Private Sub LOGIN_MouseUp(sender As Object, e As MouseEventArgs) Handles MyBase.MouseUp
        If e.Button = MouseButtons.Left Then
            IsFormBeingDragged = False
        End If
    End Sub
    Private Sub LOGIN_MouseMove(sender As Object, e As MouseEventArgs) Handles MyBase.MouseMove
        If IsFormBeingDragged Then
            Dim temp As Point = New Point()
            temp.X = Me.Location.X + (e.X - 400)
            temp.Y = Me.Location.Y + (e.Y - 20)
            Me.Location = temp
            temp = Nothing
        End If
    End Sub
    Private Sub LOGIN_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label1.Text = Date.Now.ToString("hh:mm tt")
    End Sub
    Private Sub BunifuFlatButton1_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton1.Click
        Try
            If Not BunifuMaterialTextbox1.Text = selectspecific("select Username from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'") And
               Not BunifuMaterialTextbox2.Text = selectspecific("select Password from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'") Then
                MsgBox("Incorrect Password and Username", MsgBoxStyle.Information, "TechList - Automated Inventory System")
                BunifuMaterialTextbox1.Text = "USERNAME"
                BunifuMaterialTextbox2.Text = "PASSWORD"

            ElseIf BunifuMaterialTextbox1.Text = selectspecific("select Username from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'") And
            BunifuMaterialTextbox2.Text = selectspecific("select Password from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'") And
            0 = selectspecific("select Admin from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'") Then
                VERIFICATION.Show()
                Me.Hide()
                TechList.Level = 0
                TechList.Color = 1
                VERIFICATION.Label4.Text = BunifuMaterialTextbox1.Text
                TechList.User = BunifuMaterialTextbox1.Text
                TechList.Pass = BunifuMaterialTextbox2.Text
                TechList.InTime = Label1.Text
                TechList.ToDate = selectspecific("select Name from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'")
                BunifuMaterialTextbox1.Text = "USERNAME"
                BunifuMaterialTextbox2.Text = "PASSWORD"

            ElseIf BunifuMaterialTextbox1.Text = selectspecific("select Username from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'") And
                BunifuMaterialTextbox2.Text = selectspecific("select Password from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'") And
                1 = selectspecific("select Admin from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'") Then
                VERIFICATION.Show()
                Me.Hide()
                TechList.Level = 1
                TechList.Color = 0
                VERIFICATION.Label4.Text = BunifuMaterialTextbox1.Text
                TechList.User = BunifuMaterialTextbox1.Text
                TechList.Pass = BunifuMaterialTextbox2.Text
                TechList.InTime = Label1.Text
                TechList.ToDate = selectspecific("select Name from bim0kocn6y1cl68dqubs.loginn where Username = '" & BunifuMaterialTextbox1.Text & "'")
                BunifuMaterialTextbox1.Text = "USERNAME"
                BunifuMaterialTextbox2.Text = "PASSWORD"

            Else
                MsgBox("Incorrect Password and Username", MsgBoxStyle.Information, "TechList - Automated Inventory System")
                BunifuMaterialTextbox1.Text = "USERNAME"
                BunifuMaterialTextbox2.Text = "PASSWORD"
            End If
        Catch
            MsgBox("No Internet Connection Please Check your Internet Connection", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End Try
    End Sub

    Private Sub BunifuFlatButton2_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton2.Click
        Application.Exit()
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

    Private Sub PictureBox5_Click(sender As Object, e As EventArgs) Handles PictureBox5.Click
        If BunifuMaterialTextbox2.isPassword = False Then
            BunifuMaterialTextbox2.isPassword = True
        Else
            BunifuMaterialTextbox2.isPassword = False
        End If
    End Sub

    Private Sub BunifuMaterialTextbox1_MouseEnter(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.MouseEnter
        If BunifuMaterialTextbox1.Text = "USERNAME" Then
            BunifuMaterialTextbox1.Text = ""
            BunifuMaterialTextbox1.ForeColor = Color.Black
        End If
    End Sub

    Private Sub BunifuMaterialTextbox1_MouseLeave(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.MouseLeave
        If BunifuMaterialTextbox1.Text = "" Then
            BunifuMaterialTextbox1.Text = "USERNAME"
            BunifuMaterialTextbox1.ForeColor = Color.Gray
        End If
    End Sub

    Private Sub BunifuMaterialTextbox2_MouseEnter(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox2.MouseEnter
        If BunifuMaterialTextbox2.Text = "PASSWORD" Then
            BunifuMaterialTextbox2.Text = ""
            BunifuMaterialTextbox2.ForeColor = Color.Black
        End If
    End Sub

    Private Sub BunifuMaterialTextbox2_MouseLeave(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox2.MouseLeave
        If BunifuMaterialTextbox2.Text = "" Then
            BunifuMaterialTextbox2.Text = "PASSWORD"
            BunifuMaterialTextbox2.ForeColor = Color.Gray
        End If
    End Sub

    Private Sub BunifuMaterialTextbox1_OnValueChanged(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.OnValueChanged
        VERIFICATION.Label3.Text = BunifuMaterialTextbox1.Text
    End Sub

    Private Sub BunifuFlatButton3_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton3.Click
        GUESSMAMA.Show()
        Me.Hide()
    End Sub
End Class