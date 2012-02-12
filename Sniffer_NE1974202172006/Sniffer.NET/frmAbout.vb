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
        Friend WithEvents Button1 As System.Windows.Forms.Button
        <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
            Me.Button1 = New System.Windows.Forms.Button()
            Me.SuspendLayout()
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
            Me.Button1.UseVisualStyleBackColor = False
            '
            'frmAbout
            '
            Me.AutoScaleBaseSize = New System.Drawing.Size(6, 14)
            Me.BackColor = System.Drawing.Color.White
            Me.ClientSize = New System.Drawing.Size(376, 229)
            Me.Controls.Add(Me.Button1)
            Me.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.ForeColor = System.Drawing.Color.Blue
            Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
            Me.MaximizeBox = False
            Me.MinimizeBox = False
            Me.Name = "frmAbout"
            Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
            Me.Text = "About Sniffer.NET"
            Me.ResumeLayout(False)

        End Sub

#End Region


        Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
            Me.Hide()
        End Sub

        Private Sub frmAbout_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        End Sub

        Private Sub linkLabel1_LinkClicked(ByVal sender As Object, ByVal e As System.Windows.Forms.LinkLabelLinkClickedEventArgs)
            Dim target As String = CType(e.Link.LinkData, String)
            System.Diagnostics.Process.Start(target)
        End Sub

    End Class

End Namespace
