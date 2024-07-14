Imports System.Runtime.InteropServices
Public Class GUESSMAMA

    Dim isCollapsed As Boolean = True
    Dim isCollapsed2 As Boolean = True

    Private currentChildform As Form
    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        OpenChildForm(New GUESSHOME)
        GUESSPARTS.Close()
        GUESSINVENTORY.Close()
        GUESSPROJ.Close()
        GUESSSTOCK.Close()
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

    Private Sub GUESSMAMA_Resize(sender As Object, e As EventArgs) Handles MyBase.Resize
        If WindowState = FormWindowState.Maximized Then
            FormBorderStyle = FormBorderStyle.None
        Else
            FormBorderStyle = FormBorderStyle.Sizable
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
    Private Sub btnMenu_Click(sender As Object, e As EventArgs) Handles btnMenu.Click
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
    
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        btnmenu2.Visible = False
        Timer5.Enabled = True
    End Sub
    Private Sub BunifuImageButton1_Click(sender As Object, e As EventArgs) Handles BunifuImageButton1.Click
            Me.Close()
            LOGIN.Show()
    End Sub

    Private Sub BunifuFlatButton7_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton7.Click
        OpenChildForm(New GUESSSTOCK)
        GUESSHOME.Close()
    End Sub
    Private Sub BunifuFlatButton5_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton5.Click
        OpenChildForm(New GUESSPROJ)
        GUESSHOME.Close()
    End Sub
    Private Sub BunifuFlatButton4_Click(sender As Object, e As EventArgs) Handles BunifuFlatButton4.Click
        OpenChildForm(New GUESSINVENTORY)
        GUESSHOME.Close()
    End Sub

    Private Sub Timer5_Tick(sender As Object, e As EventArgs) Handles Timer5.Tick
        Label4.Text = Date.Now.ToString("hh:mm tt")
    End Sub
End Class