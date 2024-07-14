Public Class ADMINPROJBORROW
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
        Dim LogID As String = selectspecific("select LogID from bim0kocn6y1cl68dqubs.plog")
        Label4.Text = Val(LogID) + 1

        If ComboBox1.Text = "Used" Then
            TechList.ActivityAdmin = TechList.ActivityAdmin & "Borrowed Projector, "
            nonquery("update bim0kocn6y1cl68dqubs.projector set Brand = '" & BunifuMaterialTextbox1.Text & "', User = '" & BunifuMaterialTextbox2.Text & "', Status = '" & ComboBox1.Text & "', Date = '" & Label5.Text & "' where ProjectorId = '" & Label1.Text & "'")
            bnonquery("update  btuuxshmsyyx30v5w9ii.projector set Brand = '" & BunifuMaterialTextbox1.Text & "', User = '" & BunifuMaterialTextbox2.Text & "', Status = '" & ComboBox1.Text & "', Date = '" & Label5.Text & "' where ProjectorId = '" & Label1.Text & "'")
            nonquery("insert into bim0kocn6y1cl68dqubs.plog values('" & Label4.Text & "','" & Label1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & Label3.Text & "','" & "" & "','" & Label2.Text & "')")
            bnonquery("insert into btuuxshmsyyx30v5w9ii.plog values('" & Label4.Text & "','" & Label1.Text & "','" & BunifuMaterialTextbox2.Text & "','" & Label3.Text & "','" & "" & "','" & Label2.Text & "')")
            MsgBox("Projector is Successfuly Borrowed", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            mypopulate("select * from bim0kocn6y1cl68dqubs.projector", ADMINPROJ.DataGridView1)
            OpenChildForm(New ADMINPROJ)
            Me.Close()
        Else
            TechList.ActivityAdmin = TechList.ActivityAdmin & "Borrowed Projector, "
            nonquery("update bim0kocn6y1cl68dqubs.projector set Brand = '" & BunifuMaterialTextbox1.Text & "', User = '" & BunifuMaterialTextbox2.Text & "', Status = '" & ComboBox1.Text & "', Date = '" & Label2.Text & "' where ProjectorId = '" & Label1.Text & "'")
            bnonquery("update  btuuxshmsyyx30v5w9ii.projector set Brand = '" & BunifuMaterialTextbox1.Text & "', User = '" & BunifuMaterialTextbox2.Text & "', Status = '" & ComboBox1.Text & "', Date = '" & Label2.Text & "' where ProjectorId = '" & Label1.Text & "'")
            MsgBox("Projector is Successfuly Borrowed", MsgBoxStyle.Information, "TechList - Automated Inventory System")
            mypopulate("select * from bim0kocn6y1cl68dqubs.projector", ADMINPROJ.DataGridView1)
            OpenChildForm(New ADMINPROJ)
            Me.Close()
        End If
    End Sub

    Private Sub INVENTORYUPDATE_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        BunifuMaterialTextbox1.Text = TechList.ProjB
        BunifuMaterialTextbox2.Text = TechList.ProjU
        ComboBox1.Text = TechList.ProjS
        Label1.Text = TechList.ProjI
        Label2.Text = Date.Now.ToString("MMM dd, yyyy")
        Label3.Text = Date.Now.ToString("hh:mm tt")
        Label5.Text = Date.Now.ToString("MMM dd, yyyy hh:mm:ss tt")

    End Sub

    Private Sub ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox1.SelectedIndexChanged
        If ComboBox1.Text = "Used" Then
            BunifuMaterialTextbox2.Enabled = True
            BunifuMaterialTextbox2.Text = "Professor"
        Else
            BunifuMaterialTextbox2.Text = "Out of Order"
        End If
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