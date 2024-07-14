Public Class HELPSHOW
    Private currentChildform As Form = Nothing
    Private Sub OpenChildForm(childForm As Form)
        If currentChildform IsNot Nothing Then
            currentChildform.Close()
        End If
        currentChildform = childForm
        childForm.TopLevel = False
        childForm.FormBorderStyle = FormBorderStyle.None
        childForm.Dock = DockStyle.Fill
        USERMAMA.PanelDesktop.Controls.Add(childForm)
        childForm.BringToFront()
        childForm.Show()
        USERMAMA.lblFormTite.Text = childForm.Text
    End Sub
    Private IsFormBeingDragged As Boolean = False
    Private MouseDownX As Integer
    Private MouseDownY As Integer

    Private Sub GroupBox1_MouseDown(sender As Object, e As MouseEventArgs) Handles GroupBox1.MouseDown
        If e.Button = MouseButtons.Left Then
            IsFormBeingDragged = True
            MouseDownX = e.X
            MouseDownY = e.Y
        End If
    End Sub

    Private Sub GroupBox1_MouseUp(sender As Object, e As MouseEventArgs) Handles GroupBox1.MouseUp
        If e.Button = MouseButtons.Left Then
            IsFormBeingDragged = False
        End If
    End Sub
    Private Sub GroupBox1_MouseMove(sender As Object, e As MouseEventArgs) Handles GroupBox1.MouseMove
        If IsFormBeingDragged Then
            Dim temp As Point = New Point()
            temp.X = Me.Location.X + (e.X - 400)
            temp.Y = Me.Location.Y + (e.Y - 20)
            Me.Location = temp
            temp = Nothing
        End If
    End Sub
    Private Sub HELPSHOW_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        RichTextBox2.Text = TechList.Problem
        RichTextBox1.Text = TechList.Solution
        Label2.Text = Date.Now.ToString("MMM dd, yyyy hh:mm tt")
    End Sub


    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim ReportID As String = selectspecific("select ReportID from bim0kocn6y1cl68dqubs.mreport")
        Label1.Text = Val(ReportID) + 1
        TechList.ActivityUser = TechList.ActivityUser & "Minor Report, "
        nonquery("insert into bim0kocn6y1cl68dqubs.mreport values('" & Label1.Text & "','" & TechList.ToDate & "','" & RichTextBox2.Text & "','" & Label2.Text & "','" & TechList.Container3 & "')")
        bnonquery("insert into btuuxshmsyyx30v5w9ii.mreport values('" & Label1.Text & "','" & TechList.ToDate & "','" & RichTextBox2.Text & "','" & Label2.Text & "','" & TechList.Container3 & "')")
        Me.Close()
    End Sub
End Class