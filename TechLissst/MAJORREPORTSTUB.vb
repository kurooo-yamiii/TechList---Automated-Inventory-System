Imports System.Runtime.InteropServices
Imports System.Drawing.Printing
Public Class MAJORREPORTSTUB
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

    Private Sub Panel3_MouseDown(sender As Object, e As MouseEventArgs) Handles Panel3.MouseDown
        ReleaseCapture()
        SendMessage(Me.Handle, &H112&, &HF012&, 0)
    End Sub

    Private Sub MAJORREPORTSTUB_Resize(sender As Object, e As EventArgs) Handles MyBase.Resize
        If WindowState = FormWindowState.Maximized Then
            FormBorderStyle = FormBorderStyle.None
        Else
            FormBorderStyle = FormBorderStyle.Sizable
        End If
    End Sub
    Private Sub MAJORREPORTSTUB_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        If TechList.StubID < 10 Then
            BunifuCustomLabel1.Text = 0 & TechList.StubID
            Label7.Text = TechList.StubProf
            Label8.Text = TechList.StubTools
            Label9.Text = TechList.StubDate
            Label10.Text = TechList.StubStatus
            Label4.Text = TechList.StubCasualty
        Else
            BunifuCustomLabel1.Text = TechList.StubID
            Label7.Text = TechList.StubProf
            Label8.Text = TechList.StubTools
            Label9.Text = TechList.StubDate
            Label10.Text = TechList.StubStatus
            Label4.Text = TechList.StubCasualty
        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Close()
    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        PrintPreviewDialog1.ShowDialog()
    End Sub

    Private Sub PrintDocument1_PrintPage(sender As Object, e As Printing.PrintPageEventArgs) Handles PrintDocument1.PrintPage
        Dim Form As New Bitmap(Me.Width, Me.Height)
        Me.DrawToBitmap(Form, New Rectangle(0, 0, Me.Width, Me.Height))
        e.Graphics.DrawImage(Form, 50, 350)
    End Sub
End Class