Public Class USERINVENTORY
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

    Private Sub USERINVENTORY_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        mypopulate("select * from bim0kocn6y1cl68dqubs.part", DataGridView1)
    End Sub

    Private Sub BunifuMaterialTextbox1_OnValueChanged(sender As Object, e As EventArgs) Handles BunifuMaterialTextbox1.OnValueChanged

        If ComboBox1.Text = "" Then
            mypopulate("select * from bim0kocn6y1cl68dqubs.part where " & "PC" & " LIKE '%" & BunifuMaterialTextbox1.Text & "%'", DataGridView1)
        Else
            mypopulate("select * from bim0kocn6y1cl68dqubs.part where " & ComboBox1.Text & " LIKE '%" & BunifuMaterialTextbox1.Text & "%'", DataGridView1)
        End If

    End Sub

    Private Sub DataGridView1_CellContentDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentDoubleClick
        TechList.PartID = DataGridView1.Item(0, DataGridView1.CurrentRow.Index).Value
        TechList.PCName = DataGridView1.Item(1, DataGridView1.CurrentRow.Index).Value
        OpenChildForm(New USERPARTS)
        Me.Close()
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        TechList.Container = DataGridView1.Item(1, DataGridView1.CurrentRow.Index).Value
        TechList.Counter = 1
        OpenChildForm(New SENDREPORT)
        Me.Close()
    End Sub

    Private Sub BunifuMaterialTextbox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox1.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
End Class