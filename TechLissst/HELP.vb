Public Class HELP
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
    Private Sub BunifuMaterialTextbox1_MouseEnter(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.MouseEnter
        If BunifuMaterialTextbox1.Text = "Search the Problem Here" Then
            BunifuMaterialTextbox1.Text = ""
            BunifuMaterialTextbox1.ForeColor = Color.Black
        End If
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        mypopulate("Select Problem, Solution from bim0kocn6y1cl68dqubs.help where " & "Problem" & " LIKE '%" & BunifuMaterialTextbox1.Text & "%'", DataGridView1)
    End Sub
    Private Sub BunifuMaterialTextbox1_MouseLeave(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.MouseLeave
        If BunifuMaterialTextbox1.Text = "" Then
            BunifuMaterialTextbox1.Text = "Search the Problem Here"
            BunifuMaterialTextbox1.ForeColor = Color.Gray
        End If
    End Sub

    Private Sub DataGridView1_CellContentDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentDoubleClick
        TechList.Problem = DataGridView1.Item(0, DataGridView1.CurrentRow.Index).Value
        TechList.Solution = DataGridView1.Item(1, DataGridView1.CurrentRow.Index).Value
        TechList.Container3 = BunifuMaterialTextbox1.Text
        BunifuMaterialTextbox1.Text = "Search the Problem Here"
        HELPSHOW.Show()
    End Sub
    Private Sub BunifuMaterialTextbox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox1.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
End Class