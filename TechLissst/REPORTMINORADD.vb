Public Class REPORTMINORADD

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

    Private Sub REPORTADD_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label2.Text = Date.Now.ToString("MMM dd, yyyy hh:mm tt")
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        Dim ReportID As String = selectspecific("select ReportID from bim0kocn6y1cl68dqubs.mreport")
        Label1.Text = Val(ReportID) + 1
        TechList.ActivityAdmin = TechList.ActivityAdmin & "Added Report, "
        nonquery("insert into bim0kocn6y1cl68dqubs.mreport values('" & Label1.Text & "','" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & Label2.Text & "','" & BunifuMaterialTextbox3.Text & "')")
        bnonquery("insert into btuuxshmsyyx30v5w9ii.mreport values('" & Label1.Text & "','" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & Label2.Text & "','" & BunifuMaterialTextbox3.Text & "')")
        mypopulate("select * from bim0kocn6y1cl68dqubs.mreport", REPORTMINOR.DataGridView1)
        MsgBox("Minor report is Successfuly ADDED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        OpenChildForm(New REPORTMINOR)
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

End Class