Namespace Sniffer

    Public Class frmAbout
        Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

        Public Sub New()
            MyBase.New()

            'This call is required by the Windows Form Designer.
            InitializeComponent()

            'Add any initialization after the InitializeComponent() call

        End Sub

        'Form overrides dispose to clean up the component list.
        Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
            If disposing Then
                If Not (components Is Nothing) Then
                    components.Dispose()
                End If
            End If
            MyBase.Dispose(disposing)
        End Sub

        'Required by the Windows Form Designer
        Private components As System.ComponentModel.IContainer

        'NOTE: The following procedure is required by the Windows Form Designer
        'It can be modified using the Windows Form Designer.  
        'Do not modify it using the code editor.
        Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
        Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
        Friend WithEvents Label2 As System.Windows.Forms.Label
        Friend WithEvents Label1 As System.Windows.Forms.Label
        Friend WithEvents LinkLabel1 As System.Windows.Forms.LinkLabel
        Friend WithEvents Button1 As System.Windows.Forms.Button
        <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
            Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmAbout))
            Me.PictureBox1 = New System.Windows.Forms.PictureBox
            Me.GroupBox1 = New System.Windows.Forms.GroupBox
            Me.LinkLabel1 = New System.Windows.Forms.LinkLabel
            Me.Label2 = New System.Windows.Forms.Label
            Me.Label1 = New System.Windows.Forms.Label
            Me.Button1 = New System.Windows.Forms.Button
            Me.GroupBox1.SuspendLayout()
            Me.SuspendLayout()
            '
            'PictureBox1
            '
            Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
            Me.PictureBox1.Location = New System.Drawing.Point(3, 0)
            Me.PictureBox1.Name = "PictureBox1"
            Me.PictureBox1.Size = New System.Drawing.Size(188, 109)
            Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize
            Me.PictureBox1.TabIndex = 0
            Me.PictureBox1.TabStop = False
            '
            'GroupBox1
            '
            Me.GroupBox1.Controls.Add(Me.LinkLabel1)
            Me.GroupBox1.Controls.Add(Me.Label2)
            Me.GroupBox1.Controls.Add(Me.Label1)
            Me.GroupBox1.Location = New System.Drawing.Point(110, 105)
            Me.GroupBox1.Name = "GroupBox1"
            Me.GroupBox1.Size = New System.Drawing.Size(246, 76)
            Me.GroupBox1.TabIndex = 3
            Me.GroupBox1.TabStop = False
            '
            'LinkLabel1
            '
            Me.LinkLabel1.Cursor = System.Windows.Forms.Cursors.Hand
            Me.LinkLabel1.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.LinkLabel1.LinkBehavior = System.Windows.Forms.LinkBehavior.HoverUnderline
            Me.LinkLabel1.Location = New System.Drawing.Point(40, 48)
            Me.LinkLabel1.Name = "LinkLabel1"
            Me.LinkLabel1.Size = New System.Drawing.Size(178, 18)
            Me.LinkLabel1.TabIndex = 5
            Me.LinkLabel1.TabStop = True
            Me.LinkLabel1.Text = "http://www.v2Softwares.com"
            '
            'Label2
            '
            Me.Label2.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.Label2.Location = New System.Drawing.Point(10, 32)
            Me.Label2.Name = "Label2"
            Me.Label2.Size = New System.Drawing.Size(226, 18)
            Me.Label2.TabIndex = 4
            Me.Label2.Text = "Powered By PackMon.NET Library v1.0"
            '
            'Label1
            '
            Me.Label1.AutoSize = True
            Me.Label1.Font = New System.Drawing.Font("Verdana", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.Label1.ForeColor = System.Drawing.Color.FromArgb(CType(0, Byte), CType(0, Byte), CType(192, Byte))
            Me.Label1.Location = New System.Drawing.Point(10, 14)
            Me.Label1.Name = "Label1"
            Me.Label1.Size = New System.Drawing.Size(90, 19)
            Me.Label1.TabIndex = 3
            Me.Label1.Text = "Sniffer.NET"
            '
            'Button1
            '
            Me.Button1.BackColor = System.Drawing.SystemColors.ActiveBorder
            Me.Button1.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.Button1.ForeColor = System.Drawing.SystemColors.ControlText
            Me.Button1.Location = New System.Drawing.Point(285, 192)
            Me.Button1.Name = "Button1"
            Me.Button1.Size = New System.Drawing.Size(70, 26)
            Me.Button1.TabIndex = 4
            Me.Button1.Text = "Close"
            '
            'frmAbout
            '
            Me.AutoScaleBaseSize = New System.Drawing.Size(6, 14)
            Me.BackColor = System.Drawing.Color.White
            Me.ClientSize = New System.Drawing.Size(376, 229)
            Me.Controls.Add(Me.Button1)
            Me.Controls.Add(Me.GroupBox1)
            Me.Controls.Add(Me.PictureBox1)
            Me.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.ForeColor = System.Drawing.Color.Blue
            Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
            Me.MaximizeBox = False
            Me.MinimizeBox = False
            Me.Name = "frmAbout"
            Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
            Me.Text = "About Sniffer.NET"
            Me.GroupBox1.ResumeLayout(False)
            Me.ResumeLayout(False)

        End Sub

#End Region


        Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
            Me.Hide()
        End Sub

        Private Sub frmAbout_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
            If LinkLabel1.Links.Count = 0 Then LinkLabel1.Links.Add(0, 100, "www.v2Softwares.com")
        End Sub

        Private Sub linkLabel1_LinkClicked(ByVal sender As Object, ByVal e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles LinkLabel1.LinkClicked
            Dim target As String = CType(e.Link.LinkData, String)
            System.Diagnostics.Process.Start(target)
        End Sub

    End Class

End Namespace
