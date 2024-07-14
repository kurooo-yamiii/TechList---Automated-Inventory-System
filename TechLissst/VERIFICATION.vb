Imports System.Runtime.InteropServices
Imports System.Net.Mail
Public Class VERIFICATION
    Private IsFormBeingDragged As Boolean = False
    Private MouseDownX As Integer
    Private MouseDownY As Integer
    Public Sub New()
        InitializeComponent()
        Me.Text = String.Empty
        Me.ControlBox = False
        Me.DoubleBuffered = True
        Me.MaximizedBounds = Screen.PrimaryScreen.WorkingArea
    End Sub
    <DllImport("user32.DLL", EntryPoint:="ReleaseCapture")>
    Private Shared Sub ReleaseCapture()
    End Sub
    <DllImport("user32.DLL", EntryPoint:="SendMessage")>
    Private Shared Sub SendMessage(ByVal hWind As System.IntPtr, ByVal wMsg As Integer, ByVal WParam As Integer, ByRef lParam As Integer)
    End Sub
    Private Sub Panel1_MouseDown(sender As Object, e As MouseEventArgs) Handles Panel1.MouseDown
        ReleaseCapture()
        SendMessage(Me.Handle, &H112&, &HF012&, 0)
    End Sub
    Private Sub VERIFICATION_Resize(sender As Object, e As EventArgs) Handles MyBase.Resize
        If WindowState = FormWindowState.Maximized Then
            FormBorderStyle = FormBorderStyle.None
        Else
            FormBorderStyle = FormBorderStyle.Sizable
        End If
    End Sub
    Private Sub BunifuMaterialTextbox1_MouseEnter(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.MouseEnter
        If BunifuMaterialTextbox1.Text = "Enter Verification Code" Then
            BunifuMaterialTextbox1.Text = ""
            BunifuMaterialTextbox1.ForeColor = Color.Black
        End If
    End Sub

    Private Sub BunifuMaterialTextbox1_MouseLeave(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.MouseLeave
        If BunifuMaterialTextbox1.Text = "" Then
            BunifuMaterialTextbox1.Text = "Enter Verification Code"
            BunifuMaterialTextbox1.ForeColor = Color.Gray
        End If
    End Sub

    Private Sub BunifuMaterialTextbox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox1.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
    Private Sub BunifuFlatButton1_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton1.Click
        Dim Vcode As String = selectspecific("select Vcode from bim0kocn6y1cl68dqubs.loginn where Username = '" & TechList.User & "'")
        If BunifuMaterialTextbox1.Text = Vcode And TechList.Level = 1 Then
            BunifuMaterialTextbox1.Text = "Enter Verification Code"
            Form1.lblFormTite.Text = "Welcome Back " & TechList.ToDate & ""
            Form1.Show()
            Me.Hide()
        ElseIf BunifuMaterialTextbox1.Text = Vcode And TechList.Level = 0 Then
            BunifuMaterialTextbox1.Text = "Enter Verification Code"
            USERMAMA.lblFormTite.Text = "Welcome Back " & TechList.ToDate & ""
            USERMAMA.Show()
            Me.Hide()
        Else
            MsgBox("Wrong Verification Code", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub

    Private Sub VERIFICATION_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim Code As New Random
        Label2.Text = Code.Next(100000, 999999)
        nonquery("update bim0kocn6y1cl68dqubs.loginn set Vcode = '" & Label2.Text & "' where Username = '" & Label3.Text & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.loginn set Vcode = '" & Label2.Text & "' where Username = '" & Label3.Text & "'")
        Dim Institution As String = Label3.Text
        Dim Main As String = "rtutechlistinventorysys@gmail.com"
        Dim Subject As String = "Verification Code: TechList ID Login"
        Dim Body As String = "Your generated Verification Code: " & Label2.Text & " Insert it to the verfication box in order to proceed in your Login"
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("rtutechlistinventorysys@gmail.com", "dpyljwgyrohpixdj")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"
            e_mail = New MailMessage()
            e_mail.From = New MailAddress(Main)
            e_mail.To.Add(Institution)
            e_mail.Subject = Subject
            e_mail.IsBodyHtml = False
            e_mail.Body = Body
            Smtp_Server.Send(e_mail)


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub BunifuFlatButton2_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton2.Click
        Dim Code As New Random
        BunifuMaterialTextbox1.Text = "Enter Verification Code"
        Label2.Text = Code.Next(100000, 999999)
        nonquery("update bim0kocn6y1cl68dqubs.loginn set Vcode = '" & Label2.Text & "'where Username = '" & Label4.Text & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.loginn set Vcode = '" & Label2.Text & "'where Username = '" & Label4.Text & "'")
        Dim Institution As String = Label4.Text
        Dim Main As String = "rtutechlistinventorysys@gmail.com"
        Dim Subject As String = "Verification Code: TechList ID Login"
        Dim Body As String = "Your generated Verification Code: " & Label2.Text & " Insert it to the verfication box in order to proceed in your Login"
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("rtutechlistinventorysys@gmail.com", "dpyljwgyrohpixdj")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"
            e_mail = New MailMessage()
            e_mail.From = New MailAddress(Main)
            e_mail.To.Add(Institution)
            e_mail.Subject = Subject
            e_mail.IsBodyHtml = False
            e_mail.Body = Body
            Smtp_Server.Send(e_mail)


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        MsgBox("New Verification Code has been Generated", MsgBoxStyle.Information, "TechList - Automated Inventory System")
    End Sub
End Class