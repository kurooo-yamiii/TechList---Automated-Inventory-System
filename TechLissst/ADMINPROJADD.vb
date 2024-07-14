Public Class ADMINPROJADD
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

    Private Sub ADMINPROJADD_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label2.Text = Date.Now.ToString("MMM dd, yyyy hh:mm:ss tt")
    End Sub

    Private Sub Button4_Click_1(sender As Object, e As EventArgs) Handles Button4.Click
        Dim ProjectorID As String = selectspecific("select ProjectorID from bim0kocn6y1cl68dqubs.projector")
        Label1.Text = Val(ProjectorID) + 1
        If ComboBox1.Text = "Available" Then
            Label3.Text = "NA"
        Else
            Label3.Text = "Out of Order"
        End If
        TechList.ActivityAdmin = TechList.ActivityAdmin & "Added Item, "
        nonquery("insert into bim0kocn6y1cl68dqubs.projector values('" & Label1.Text & "','" & BunifuMaterialTextbox1.Text & "','" & Label2.Text & "','" & Label3.Text & "','" & ComboBox1.Text & "')")
        bnonquery("insert into btuuxshmsyyx30v5w9ii.projector values('" & Label1.Text & "','" & BunifuMaterialTextbox1.Text & "','" & Label2.Text & "','" & Label3.Text & "','" & ComboBox1.Text & "')")
        MsgBox("Projector is Successfuly ADDED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        mypopulate("select * from bim0kocn6y1cl68dqubs.projector", ADMINPROJ.DataGridView1)
        Me.Close()
        OpenChildForm(New ADMINPROJ)
    End Sub

    Private Sub BunifuMaterialTextbox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox1.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
End Class