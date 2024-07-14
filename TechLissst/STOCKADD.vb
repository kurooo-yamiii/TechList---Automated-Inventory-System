Public Class STOCKADD
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

    Private Sub STOCKADD_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Label2.Text = Date.Now.ToString("MMM dd, yyyy")
    End Sub

    Private Sub Button4_Click_1(sender As Object, e As EventArgs) Handles Button4.Click
        Dim ItemID As String = selectspecific("select ItemID from bim0kocn6y1cl68dqubs.stock")
        Label1.Text = Val(ItemID) + 1
        TechList.ActivityAdmin = TechList.ActivityAdmin & "Added Item, "
        nonquery("insert into bim0kocn6y1cl68dqubs.stock values('" & Label1.Text & "','" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & Label2.Text & "','" & Label2.Text & "','" & BunifuMaterialTextbox3.Text & "','" & ComboBox1.Text & "')")
        bnonquery("insert into btuuxshmsyyx30v5w9ii.stock values('" & Label1.Text & "','" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & Label2.Text & "','" & Label2.Text & "','" & BunifuMaterialTextbox3.Text & "','" & ComboBox1.Text & "')")
        MsgBox("Item is Successfuly ADDED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        mypopulate("select * from bim0kocn6y1cl68dqubs.stock", STOCK.DataGridView1)
        Me.Close()
        OpenChildForm(New STOCK)
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