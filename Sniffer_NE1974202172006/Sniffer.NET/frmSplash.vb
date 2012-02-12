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
        Friend WithEvents lblStatus As System.Windows.Forms.Label
        <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
            Me.lblStatus = New System.Windows.Forms.Label()
            Me.SuspendLayout()
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
            Me.Name = "frmSplash"
            Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
            Me.ResumeLayout(False)

        End Sub

#End Region


        Private Sub lblStatus_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblStatus.Click

        End Sub
    End Class
End Namespace
