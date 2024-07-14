Imports System.Runtime.InteropServices
Public Class USERMAMA
   
    Dim isCollapsed As Boolean = True
    Dim isCollapsed2 As Boolean = True

    Private currentChildform As Form
    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        OpenChildForm(New HOMEUSER)
        USERINVENTORY.Close()
        SENDREPORT.Close()
        HELP.Close()
        CHANGEPASSWORD.Close()
    End Sub
    Public Sub New()
        InitializeComponent()
        Me.Text = String.Empty
        Me.ControlBox = False
        Me.DoubleBuffered = True
        Me.MaximizedBounds = Screen.PrimaryScreen.WorkingArea
    End Sub

    Private Sub OpenChildForm(childForm As Form)
        If currentChildform IsNot Nothing Then
            currentChildform.Close()
        End If
        currentChildform = childForm
        childForm.TopLevel = False
        childForm.FormBorderStyle = FormBorderStyle.None
        childForm.Dock = DockStyle.Fill
        PanelDesktop.Controls.Add(childForm)
        childForm.BringToFront()
        childForm.Show()
        lblFormTite.Text = childForm.Text
    End Sub


    <DllImport("user32.DLL", EntryPoint:="ReleaseCapture")>
    Private Shared Sub ReleaseCapture()
    End Sub
    <DllImport("user32.DLL", EntryPoint:="SendMessage")>
    Private Shared Sub SendMessage(ByVal hWind As System.IntPtr, ByVal wMsg As Integer, ByVal WParam As Integer, ByRef lParam As Integer)
    End Sub

    Private Sub PanelTitleBar_MouseDown(sender As Object, e As MouseEventArgs) Handles PanelTitleBar.MouseDown
        ReleaseCapture()
        SendMessage(Me.Handle, &H112&, &HF012&, 0)
    End Sub

    Private Sub USERMAMA_Resize(sender As Object, e As EventArgs) Handles MyBase.Resize
        If WindowState = FormWindowState.Maximized Then
            FormBorderStyle = FormBorderStyle.None
        Else
            FormBorderStyle = FormBorderStyle.Sizable
        End If
    End Sub
    Private Sub btnMenu_Click(sender As Object, e As EventArgs)
        If PanelMenu.Width = 220 Then
            Timer4.Enabled = True
        ElseIf PanelMenu.Width = 60 Then
            Timer3.Enabled = True
        End If
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        If PanelMenu.Width >= 220 Then
            Me.Timer3.Enabled = False
        Else
            Me.PanelMenu.Width = PanelMenu.Width + 5
        End If
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick
        If PanelMenu.Width <= 60 Then
            Me.Timer4.Enabled = False
        Else
            Me.PanelMenu.Width = PanelMenu.Width - 5
        End If
    End Sub
    Private Sub BunifuImageButton2_Click(sender As Object, e As EventArgs) Handles btnMenu.Click
        If PanelMenu.Width = 220 Then
            Timer4.Enabled = True
        ElseIf PanelMenu.Width = 60 Then
            Timer3.Enabled = True
        End If


        If PanelMenu.Width = 220 Then
            PictureBox1.Visible = False
            btnmenu2.Visible = True

        ElseIf PanelMenu.Width = 60 Then
            PictureBox1.Visible = True
            btnmenu2.Visible = False

        End If
    End Sub
    Private Sub btnmenu2_Click(sender As Object, e As EventArgs) Handles btnmenu2.Click
        If PanelMenu.Width = 220 Then
            Timer4.Enabled = True
            PictureBox1.Visible = True
        ElseIf PanelMenu.Width = 60 Then
            Timer3.Enabled = True
        End If
        If PanelMenu.Width = 220 Then
            PictureBox1.Visible = False
            btnmenu2.Visible = True

        ElseIf PanelMenu.Width = 60 Then
            PictureBox1.Visible = True
            btnmenu2.Visible = False

        End If
    End Sub
    Private Sub HIDESUB()
        DropPanel1.Visible = False
    End Sub

    Private Sub showsubmenu(SUBMENU As Panel)
        If SUBMENU.Visible = False Then
            HIDESUB()
            SUBMENU.Visible = True
        Else
            SUBMENU.Visible = False
        End If
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        HIDESUB()
        btnmenu2.Visible = False
        Timer5.Enabled = True
    End Sub

    Private Sub BunifuFlatButton9_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton9.Click
        showsubmenu(DropPanel1)
        isCollapsed2 = False
        Timer1.Start()
        Timer2.Start()
    End Sub

    Private Sub BunifuFlatButton4_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton4.Click
        OpenChildForm(New SENDREPORT)
        HIDESUB()
        HOMEUSER.Close()
        TechList.Counter = 0
    End Sub

    Private Sub BunifuFlatButton6_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton6.Click
        OpenChildForm(New USERINVENTORY)
        HIDESUB()
        HOMEUSER.Close()
    End Sub

    Private Sub BunifuFlatButton1_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton1.Click
        OpenChildForm(New USERPROJECTOR)
        HIDESUB()
        HOMEUSER.Close()
    End Sub

    Private Sub BunifuFlatButton2_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton2.Click
        OpenChildForm(New USEREQUIPMENT)
        HIDESUB()
        HOMEUSER.Close()
    End Sub

    Private Sub BunifuFlatButton3_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton3.Click
        OpenChildForm(New HELP)
        HIDESUB()
        HOMEUSER.Close()
    End Sub

    Private Sub BunifuFlatButton7_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton7.Click
        OpenChildForm(New CHANGEPASSWORD)
        TechList.Color = 1
        HIDESUB()
        HOMEUSER.Close()
    End Sub

    Private Sub BunifuFlatButton5_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton5.Click
        OpenChildForm(New USERMYREPORT)
        HIDESUB()
        HOMEUSER.Close()
    End Sub

    Private Sub BunifuImageButton1_Click(sender As Object, e As EventArgs) Handles BunifuImageButton1.Click
        Dim ScheduleID As String = selectspecific("select ScheduleID from bim0kocn6y1cl68dqubs.log")
        Label3.Text = Val(ScheduleID) + 1

        Label1.Text = Date.Now.ToString("hh:mm tt")
        Label2.Text = Date.Now.ToString("MMM dd, yyyy")

        If TechList.ActivityUser = "*" Then
            Me.Close()
            LOGIN.Show()
        Else
            nonquery("insert into bim0kocn6y1cl68dqubs.log values('" & Label3.Text & "','" & TechList.ToDate & "','" & TechList.ActivityUser & "','" & TechList.InTime & "','" & Label1.Text & "','" & Label2.Text & "')")
            bnonquery("insert into btuuxshmsyyx30v5w9ii.log values('" & Label3.Text & "','" & TechList.ToDate & "','" & TechList.ActivityUser & "','" & TechList.InTime & "','" & Label1.Text & "','" & Label2.Text & "')")
            TechList.ActivityUser = "*"
            Me.Close()
            LOGIN.Show()
        End If
    End Sub
    Private Sub Timer5_Tick(sender As Object, e As EventArgs) Handles Timer5.Tick
        Label5.Text = Date.Now.ToString("hh:mm tt")
    End Sub
End Class