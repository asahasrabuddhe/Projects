Namespace Sniffer
    Public Class frmSplash
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
        Friend WithEvents lblStatus As System.Windows.Forms.Label
        <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
            Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmSplash))
            Me.PictureBox1 = New System.Windows.Forms.PictureBox
            Me.lblStatus = New System.Windows.Forms.Label
            Me.SuspendLayout()
            '
            'PictureBox1
            '
            Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
            Me.PictureBox1.Location = New System.Drawing.Point(26, 5)
            Me.PictureBox1.Name = "PictureBox1"
            Me.PictureBox1.Size = New System.Drawing.Size(188, 109)
            Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize
            Me.PictureBox1.TabIndex = 0
            Me.PictureBox1.TabStop = False
            '
            'lblStatus
            '
            Me.lblStatus.Enabled = False
            Me.lblStatus.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.lblStatus.Location = New System.Drawing.Point(12, 110)
            Me.lblStatus.Name = "lblStatus"
            Me.lblStatus.Size = New System.Drawing.Size(220, 12)
            Me.lblStatus.TabIndex = 1
            Me.lblStatus.Text = "Initializing..."
            Me.lblStatus.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
            '
            'frmSplash
            '
            Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
            Me.BackColor = System.Drawing.Color.White
            Me.ClientSize = New System.Drawing.Size(241, 130)
            Me.ControlBox = False
            Me.Controls.Add(Me.lblStatus)
            Me.Controls.Add(Me.PictureBox1)
            Me.Name = "frmSplash"
            Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
            Me.ResumeLayout(False)

        End Sub

#End Region


    End Class
End Namespace
