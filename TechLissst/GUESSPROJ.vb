Public Class GUESSPROJ

    Private currentChildform As Form = Nothing
    Private Sub OpenChildForm(childForm As Form)
        If currentChildform IsNot Nothing Then
            currentChildform.Close()
        End If
        currentChildform = childForm
        childForm.TopLevel = False
        childForm.FormBorderStyle = FormBorderStyle.None
        childForm.Dock = DockStyle.Fill
        GUESSMAMA.PanelDesktop.Controls.Add(childForm)
        childForm.BringToFront()
        childForm.Show()
        GUESSMAMA.lblFormTite.Text = childForm.Text
    End Sub

    Private Sub USERINVENTORY_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        mypopulate("select * from bim0kocn6y1cl68dqubs.projector", DataGridView1)
    End Sub

    Private Sub BunifuMaterialTextbox1_OnValueChanged(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.OnValueChanged

        If ComboBox1.Text = "" Then
            mypopulate("select * from bim0kocn6y1cl68dqubs.projector where " & "ProjectorID" & " LIKE '%" & BunifuMaterialTextbox1.Text & "%'", DataGridView1)
        Else
            mypopulate("select * from bim0kocn6y1cl68dqubs.projector where " & ComboBox1.Text & " LIKE '%" & BunifuMaterialTextbox1.Text & "%'", DataGridView1)
        End If

    End Sub

    Private Sub BunifuMaterialTextbox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox1.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
End Class