Imports v2Softwares.PluginManager

Namespace Sniffer
    Public Class frmPluginManager
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
        Friend WithEvents lisPlugins As System.Windows.Forms.ListView
        Friend WithEvents imgListPluginState As System.Windows.Forms.ImageList
        Friend WithEvents colName As System.Windows.Forms.ColumnHeader
        Friend WithEvents colAuthor As System.Windows.Forms.ColumnHeader
        Friend WithEvents colDescription As System.Windows.Forms.ColumnHeader
        Friend WithEvents colVersion As System.Windows.Forms.ColumnHeader
        Friend WithEvents btnClose As System.Windows.Forms.Button
        Friend WithEvents mnuPlugin As System.Windows.Forms.ContextMenu
        Friend WithEvents MenuItem8 As System.Windows.Forms.MenuItem
        Friend WithEvents MenuItem5 As System.Windows.Forms.MenuItem
        Friend WithEvents mnuStart As System.Windows.Forms.MenuItem
        Friend WithEvents mnuStop As System.Windows.Forms.MenuItem
        Friend WithEvents mnuPause As System.Windows.Forms.MenuItem
        Friend WithEvents mnuResume As System.Windows.Forms.MenuItem
        Friend WithEvents mnuConfigure As System.Windows.Forms.MenuItem
        Friend WithEvents mnuAbout As System.Windows.Forms.MenuItem
        <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
            Me.components = New System.ComponentModel.Container
            Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmPluginManager))
            Me.lisPlugins = New System.Windows.Forms.ListView
            Me.colName = New System.Windows.Forms.ColumnHeader
            Me.colVersion = New System.Windows.Forms.ColumnHeader
            Me.colAuthor = New System.Windows.Forms.ColumnHeader
            Me.colDescription = New System.Windows.Forms.ColumnHeader
            Me.imgListPluginState = New System.Windows.Forms.ImageList(Me.components)
            Me.mnuPlugin = New System.Windows.Forms.ContextMenu
            Me.mnuAbout = New System.Windows.Forms.MenuItem
            Me.MenuItem5 = New System.Windows.Forms.MenuItem
            Me.mnuConfigure = New System.Windows.Forms.MenuItem
            Me.MenuItem8 = New System.Windows.Forms.MenuItem
            Me.mnuStart = New System.Windows.Forms.MenuItem
            Me.mnuStop = New System.Windows.Forms.MenuItem
            Me.mnuPause = New System.Windows.Forms.MenuItem
            Me.mnuResume = New System.Windows.Forms.MenuItem
            Me.btnClose = New System.Windows.Forms.Button
            Me.SuspendLayout()
            '
            'lisPlugins
            '
            Me.lisPlugins.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.colName, Me.colVersion, Me.colAuthor, Me.colDescription})
            Me.lisPlugins.GridLines = True
            Me.lisPlugins.Location = New System.Drawing.Point(8, 8)
            Me.lisPlugins.Name = "lisPlugins"
            Me.lisPlugins.Size = New System.Drawing.Size(456, 216)
            Me.lisPlugins.SmallImageList = Me.imgListPluginState
            Me.lisPlugins.TabIndex = 0
            Me.lisPlugins.View = System.Windows.Forms.View.Details
            '
            'colName
            '
            Me.colName.Text = "Name"
            Me.colName.Width = 101
            '
            'colVersion
            '
            Me.colVersion.Text = "Version"
            Me.colVersion.Width = 56
            '
            'colAuthor
            '
            Me.colAuthor.Text = "Author"
            Me.colAuthor.Width = 111
            '
            'colDescription
            '
            Me.colDescription.Text = "Description"
            Me.colDescription.Width = 141
            '
            'imgListPluginState
            '
            Me.imgListPluginState.ImageSize = New System.Drawing.Size(16, 16)
            Me.imgListPluginState.ImageStream = CType(resources.GetObject("imgListPluginState.ImageStream"), System.Windows.Forms.ImageListStreamer)
            Me.imgListPluginState.TransparentColor = System.Drawing.Color.Transparent
            '
            'mnuPlugin
            '
            Me.mnuPlugin.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuAbout, Me.MenuItem5, Me.mnuConfigure, Me.MenuItem8, Me.mnuStart, Me.mnuStop, Me.mnuPause, Me.mnuResume})
            '
            'mnuAbout
            '
            Me.mnuAbout.Index = 0
            Me.mnuAbout.Text = "About"
            '
            'MenuItem5
            '
            Me.MenuItem5.Index = 1
            Me.MenuItem5.Text = "-"
            '
            'mnuConfigure
            '
            Me.mnuConfigure.Index = 2
            Me.mnuConfigure.Text = "Configure"
            '
            'MenuItem8
            '
            Me.MenuItem8.Index = 3
            Me.MenuItem8.Text = "-"
            '
            'mnuStart
            '
            Me.mnuStart.Index = 4
            Me.mnuStart.Text = "Start"
            '
            'mnuStop
            '
            Me.mnuStop.Index = 5
            Me.mnuStop.Text = "Stop"
            '
            'mnuPause
            '
            Me.mnuPause.Index = 6
            Me.mnuPause.Text = "Pause"
            '
            'mnuResume
            '
            Me.mnuResume.Index = 7
            Me.mnuResume.Text = "Resume"
            '
            'btnClose
            '
            Me.btnClose.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.btnClose.Location = New System.Drawing.Point(384, 232)
            Me.btnClose.Name = "btnClose"
            Me.btnClose.Size = New System.Drawing.Size(80, 23)
            Me.btnClose.TabIndex = 2
            Me.btnClose.Text = "Close"
            '
            'frmPluginManager
            '
            Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
            Me.ClientSize = New System.Drawing.Size(472, 261)
            Me.Controls.Add(Me.btnClose)
            Me.Controls.Add(Me.lisPlugins)
            Me.MinimumSize = New System.Drawing.Size(480, 288)
            Me.Name = "frmPluginManager"
            Me.Text = "Plugin Manager"
            Me.ResumeLayout(False)

        End Sub

#End Region
        Private SelectedPlugin As IPlugin



        Private Sub btnClose_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClose.Click
            Me.Hide()
        End Sub

        Private Sub lisPlugins_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles lisPlugins.MouseDown
            Dim lstitem As ListViewItem

            If e.Button = MouseButtons.Right Then
                Try
                    lstitem = CType(lisPlugins.GetItemAt(e.X, e.Y), ListViewItem)
                    SelectedPlugin = CType(lstitem.Tag, IPlugin)
                    mnuStart.Enabled = False
                    mnuStop.Enabled = False
                    mnuPause.Enabled = False
                    mnuResume.Enabled = False
                    Select Case SelectedPlugin.State
                        Case PluginState.Paused
                            mnuStop.Enabled = True
                            mnuResume.Enabled = True

                        Case PluginState.Running
                            mnuStop.Enabled = True
                            mnuPause.Enabled = True

                        Case PluginState.Stopped
                            mnuStart.Enabled = True
                    End Select
                    mnuPlugin.Show(sender, New Point(e.X, e.Y))
                Catch
                End Try

            End If
        End Sub

        Private Sub mnuAbout_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuAbout.Click
            If SelectedPlugin Is Nothing Then Exit Sub
            SelectedPlugin.OnAbout()
        End Sub

        Private Sub mnuConfigure_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuConfigure.Click
            If SelectedPlugin Is Nothing Then Exit Sub
            SelectedPlugin.OnConfigure()
        End Sub

        Private Sub mnuStart_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuStart.Click
            If SelectedPlugin Is Nothing Then Exit Sub
            SelectedPlugin.Start()
        End Sub

        Private Sub mnuStop_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuStop.Click
            If SelectedPlugin Is Nothing Then Exit Sub
            SelectedPlugin.Stop()
        End Sub

        Private Sub mnuResume_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuResume.Click
            If SelectedPlugin Is Nothing Then Exit Sub
            SelectedPlugin.Resume()
        End Sub

        Private Sub mnuPause_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuPause.Click
            If SelectedPlugin Is Nothing Then Exit Sub
            SelectedPlugin.Pause()
        End Sub

        Private Sub frmPluginManager_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        End Sub

        Private Sub frmPluginManager_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Resize
            btnClose.Location = New Point(Width - btnClose.Width - 12, Height - btnClose.Height - 35)
            lisPlugins.Size = New Size(Width - (lisPlugins.Left * 2) - 5, btnClose.Top - lisPlugins.Top - 10)

        End Sub
    End Class
End Namespace
