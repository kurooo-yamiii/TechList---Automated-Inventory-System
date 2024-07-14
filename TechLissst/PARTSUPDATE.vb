Public Class PARTSUPDATE

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
        nonquery("update bim0kocn6y1cl68dqubs.inventorylist set Brand = '" & BunifuMaterialTextbox2.Text & "', Quantity = '" & BunifuMaterialTextbox3.Text & "', Status = '" & ComboBox1.Text & "', LastUpdate = '" & Label2.Text & "' where ItemID = '" & Label1.Text & "' and EquipmentName = '" & BunifuMaterialTextbox1.Text & "'")
        bnonquery("update btuuxshmsyyx30v5w9ii.inventorylist set Brand = '" & BunifuMaterialTextbox2.Text & "', Quantity = '" & BunifuMaterialTextbox3.Text & "', Status = '" & ComboBox1.Text & "', LastUpdate = '" & Label2.Text & "' where ItemID = '" & Label1.Text & "' and EquipmentName = '" & BunifuMaterialTextbox1.Text & "'")
        MsgBox("PC Part is Successfuly UPDATED", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        mypopulate("select * from bim0kocn6y1cl68dqubs.inventorylist", PARTS.DataGridView1)
        OpenChildForm(New PARTS)
        Me.Close()

    End Sub

    Private Sub PARTSUPDATE_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        BunifuMaterialTextbox1.Text = TechList.PartP
        BunifuMaterialTextbox2.Text = TechList.PartBrand
        BunifuMaterialTextbox3.Text = TechList.PartQ
        ComboBox1.Text = TechList.PartS
        Label1.Text = TechList.PartI
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

    Private Sub BunifuMaterialTextbox3_KeyPress(sender As Object, e As KeyPressEventArgs) Handles BunifuMaterialTextbox3.KeyPress
        If Char.IsPunctuation(e.KeyChar) And Not e.KeyChar = Chr(Keys.Delete) And Not e.KeyChar = Chr(Keys.Back) And Not e.KeyChar = Chr(Keys.Space) Then
            e.Handled = True
            MsgBox("Unauthorized Character is Restricted", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        End If
    End Sub
End Class