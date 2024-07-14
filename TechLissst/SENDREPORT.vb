Imports System.Net.Mail
Public Class SENDREPORT

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim ItemID As String = selectspecific("select ReportID from bim0kocn6y1cl68dqubs.report")
        Label1.Text = Val(ItemID) + 1
        TechList.ActivityUser = TechList.ActivityUser & "Sended Major Report, "
        nonquery("insert into bim0kocn6y1cl68dqubs.report values('" & Label1.Text & "','" & TechList.User & "','" & BunifuMaterialTextbox1.Text & "','" & BunifuMaterialTextbox3.Text & "','" & Label2.Text & "','" & BunifuMaterialTextbox2.Text & "','" & "Waiting List" & "')")
        Dim Institution As String = "2020-200407@rtu.edu.ph"
        Dim Main As String = "rtutechlistinventorysys@gmail.com"
        Dim Subject As String = "TechList - Automated Inventory System - ID of Report: " & Label1.Text & ""
        Dim Body As String = "Greetings MIC this report was generated having the tools/equipment named " & BunifuMaterialTextbox1.Text & " encountered some casualties " & BunifuMaterialTextbox3.Text & ". We hope you respond to the report as much as possible. Sincerely Yours TechList Team"
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("rtutechlistinventorysys@gmail.com", "dpyljwgyrohpixdj")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"
            e_mail = New MailMessage()
            e_mail.From = New MailAddress(Main)
            e_mail.To.Add(Institution)
            e_mail.Subject = Subject
            e_mail.IsBodyHtml = False
            e_mail.Body = Body
            Smtp_Server.Send(e_mail)


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        MsgBox("Mail Successfully Sent And Report Stub Successfully Generated", MsgBoxStyle.Information, "TechList - Automated Inventory System")
        TechList.StubID = Label1.Text
        TechList.StubProf = BunifuMaterialTextbox2.Text
        TechList.StubTools = BunifuMaterialTextbox1.Text
        TechList.StubCasualty = BunifuMaterialTextbox3.Text
        TechList.StubDate = Label2.Text
        TechList.StubStatus = "Waiting List"
        MAJORREPORTSTUB.Show()

        BunifuMaterialTextbox1.Text = ""
        BunifuMaterialTextbox3.Text = ""
    End Sub

    Private Sub SENDREPORT_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        If TechList.Counter = 0 Then
            BunifuMaterialTextbox1.Text = ""
            BunifuMaterialTextbox2.Text = TechList.ToDate
        Else
            BunifuMaterialTextbox1.Text = TechList.Container
            BunifuMaterialTextbox2.Text = TechList.ToDate
        End If
        TechList.Counter = 0
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