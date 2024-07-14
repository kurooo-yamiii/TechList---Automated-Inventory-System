Public Class INVENTORYUPDATE

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
    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        TechList.ActivityAdmin = TechList.ActivityAdmin & "Updated Item, "
        nonquery("update bim0kocn6y1cl68dqubs.part set PC = '" & BunifuMaterialTextbox1.Text & "', Brand = '" & BunifuMaterialTextbox2.Text & "', Status = '" & ComboBox1.Text & "', LastUpdate = '" & Label2.Text & "' where ItemId = '" & Label1.Text & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.part set PC = '" & BunifuMaterialTextbox1.Text & "', Brand = '" & BunifuMaterialTextbox2.Text & "', Status = '" & ComboBox1.Text & "', LastUpdate = '" & Label2.Text & "' where ItemId = '" & Label1.Text & "'")
        MsgBox("PC is Successfuly UPDATED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        mypopulate("select * from bim0kocn6y1cl68dqubs.part", INVENTORY.DataGridView1)
        OpenChildForm(New INVENTORY)
        Me.Close()
    End Sub

    Private Sub INVENTORYUPDATE_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        BunifuMaterialTextbox1.Text = TechList.EquipmentName
        BunifuMaterialTextbox2.Text = TechList.Brand
        ComboBox1.Text = TechList.Status
        Label1.Text = TechList.ItemID
        Label2.Text = Date.Now.ToString("MMM dd, yyyy hh:mm:ss tt")
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
End Class