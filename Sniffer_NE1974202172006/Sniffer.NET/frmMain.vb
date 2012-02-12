Imports System
Imports System.Drawing
Imports System.Collections
Imports System.ComponentModel
Imports System.Windows.Forms
Imports System.Data
Imports System.Net
Imports v2Softwares.PackMon
Imports v2Softwares.PluginManager

Namespace Sniffer
    Public Class frmMain
        Inherits System.Windows.Forms.Form
        Private m_PacketMonitors() As Monitor
        Private m_Packets As ArrayList
        Private m_PacketsSize As Integer = 0

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
        Friend WithEvents PacketList As System.Windows.Forms.ListView
        Friend WithEvents TimeHeader As System.Windows.Forms.ColumnHeader
        Friend WithEvents ProtocolHeader As System.Windows.Forms.ColumnHeader
        Friend WithEvents SourceHeader As System.Windows.Forms.ColumnHeader
        Friend WithEvents DestinationHeader As System.Windows.Forms.ColumnHeader
        Friend WithEvents LengthHeader As System.Windows.Forms.ColumnHeader
        Friend WithEvents AboutMenuItem As System.Windows.Forms.MenuItem
        Friend WithEvents StatusBar As System.Windows.Forms.StatusBar
        Friend WithEvents ExitMenuItem As System.Windows.Forms.MenuItem
        Friend WithEvents FileMenu As System.Windows.Forms.MenuItem
        Friend WithEvents MonitorMenuItem As System.Windows.Forms.MenuItem
        Friend WithEvents StopMenuItem As System.Windows.Forms.MenuItem
        Friend WithEvents ClearMenuItem As System.Windows.Forms.MenuItem
        Friend WithEvents Splitter1MenuItem As System.Windows.Forms.MenuItem
        Friend WithEvents ToolBar As System.Windows.Forms.ToolBar
        Friend WithEvents StartButton As System.Windows.Forms.ToolBarButton
        Friend WithEvents HostsMenu As System.Windows.Forms.ContextMenu
        Friend WithEvents StopButton As System.Windows.Forms.ToolBarButton
        Friend WithEvents ClearButton As System.Windows.Forms.ToolBarButton
        Friend WithEvents AboutButton As System.Windows.Forms.ToolBarButton
        Friend WithEvents ToobarImages As System.Windows.Forms.ImageList
        Friend WithEvents MainMenu As System.Windows.Forms.MainMenu
        Friend WithEvents HelpMenu As System.Windows.Forms.MenuItem
        Friend WithEvents mnuPlugins As System.Windows.Forms.MenuItem
        Friend WithEvents MenuItem2 As System.Windows.Forms.MenuItem
        Friend WithEvents mnuPlugManager As System.Windows.Forms.MenuItem
        <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
            Me.components = New System.ComponentModel.Container
            Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmMain))
            Me.PacketList = New System.Windows.Forms.ListView
            Me.TimeHeader = New System.Windows.Forms.ColumnHeader
            Me.ProtocolHeader = New System.Windows.Forms.ColumnHeader
            Me.SourceHeader = New System.Windows.Forms.ColumnHeader
            Me.DestinationHeader = New System.Windows.Forms.ColumnHeader
            Me.LengthHeader = New System.Windows.Forms.ColumnHeader
            Me.AboutMenuItem = New System.Windows.Forms.MenuItem
            Me.StatusBar = New System.Windows.Forms.StatusBar
            Me.ExitMenuItem = New System.Windows.Forms.MenuItem
            Me.FileMenu = New System.Windows.Forms.MenuItem
            Me.MonitorMenuItem = New System.Windows.Forms.MenuItem
            Me.StopMenuItem = New System.Windows.Forms.MenuItem
            Me.ClearMenuItem = New System.Windows.Forms.MenuItem
            Me.Splitter1MenuItem = New System.Windows.Forms.MenuItem
            Me.ToolBar = New System.Windows.Forms.ToolBar
            Me.StartButton = New System.Windows.Forms.ToolBarButton
            Me.HostsMenu = New System.Windows.Forms.ContextMenu
            Me.StopButton = New System.Windows.Forms.ToolBarButton
            Me.ClearButton = New System.Windows.Forms.ToolBarButton
            Me.AboutButton = New System.Windows.Forms.ToolBarButton
            Me.ToobarImages = New System.Windows.Forms.ImageList(Me.components)
            Me.MainMenu = New System.Windows.Forms.MainMenu
            Me.mnuPlugins = New System.Windows.Forms.MenuItem
            Me.mnuPlugManager = New System.Windows.Forms.MenuItem
            Me.MenuItem2 = New System.Windows.Forms.MenuItem
            Me.HelpMenu = New System.Windows.Forms.MenuItem
            Me.SuspendLayout()
            '
            'PacketList
            '
            Me.PacketList.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.TimeHeader, Me.ProtocolHeader, Me.SourceHeader, Me.DestinationHeader, Me.LengthHeader})
            Me.PacketList.Dock = System.Windows.Forms.DockStyle.Fill
            Me.PacketList.FullRowSelect = True
            Me.PacketList.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable
            Me.PacketList.Location = New System.Drawing.Point(0, 28)
            Me.PacketList.MultiSelect = False
            Me.PacketList.Name = "PacketList"
            Me.PacketList.Size = New System.Drawing.Size(600, 323)
            Me.PacketList.TabIndex = 7
            Me.PacketList.View = System.Windows.Forms.View.Details
            '
            'TimeHeader
            '
            Me.TimeHeader.Text = "Time"
            Me.TimeHeader.Width = 120
            '
            'ProtocolHeader
            '
            Me.ProtocolHeader.Text = "Protocol"
            '
            'SourceHeader
            '
            Me.SourceHeader.Text = "Source"
            Me.SourceHeader.Width = 130
            '
            'DestinationHeader
            '
            Me.DestinationHeader.Text = "Destination"
            Me.DestinationHeader.Width = 130
            '
            'LengthHeader
            '
            Me.LengthHeader.Text = "Length"
            '
            'AboutMenuItem
            '
            Me.AboutMenuItem.Index = 0
            Me.AboutMenuItem.Text = "&About"
            '
            'StatusBar
            '
            Me.StatusBar.Location = New System.Drawing.Point(0, 351)
            Me.StatusBar.Name = "StatusBar"
            Me.StatusBar.Size = New System.Drawing.Size(600, 16)
            Me.StatusBar.TabIndex = 6
            '
            'ExitMenuItem
            '
            Me.ExitMenuItem.Index = 4
            Me.ExitMenuItem.Text = "E&xit"
            '
            'FileMenu
            '
            Me.FileMenu.Index = 0
            Me.FileMenu.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.MonitorMenuItem, Me.StopMenuItem, Me.ClearMenuItem, Me.Splitter1MenuItem, Me.ExitMenuItem})
            Me.FileMenu.Text = "&File"
            '
            'MonitorMenuItem
            '
            Me.MonitorMenuItem.Index = 0
            Me.MonitorMenuItem.Text = "Monitor"
            '
            'StopMenuItem
            '
            Me.StopMenuItem.Index = 1
            Me.StopMenuItem.Text = "&Stop monitoring"
            '
            'ClearMenuItem
            '
            Me.ClearMenuItem.Index = 2
            Me.ClearMenuItem.Text = "&Clear packet list"
            '
            'Splitter1MenuItem
            '
            Me.Splitter1MenuItem.Index = 3
            Me.Splitter1MenuItem.Text = "-"
            '
            'ToolBar
            '
            Me.ToolBar.Appearance = System.Windows.Forms.ToolBarAppearance.Flat
            Me.ToolBar.Buttons.AddRange(New System.Windows.Forms.ToolBarButton() {Me.StartButton, Me.StopButton, Me.ClearButton, Me.AboutButton})
            Me.ToolBar.Cursor = System.Windows.Forms.Cursors.Default
            Me.ToolBar.DropDownArrows = True
            Me.ToolBar.ImageList = Me.ToobarImages
            Me.ToolBar.Location = New System.Drawing.Point(0, 0)
            Me.ToolBar.Name = "ToolBar"
            Me.ToolBar.ShowToolTips = True
            Me.ToolBar.Size = New System.Drawing.Size(600, 28)
            Me.ToolBar.TabIndex = 5
            '
            'StartButton
            '
            Me.StartButton.DropDownMenu = Me.HostsMenu
            Me.StartButton.ImageIndex = 0
            Me.StartButton.Style = System.Windows.Forms.ToolBarButtonStyle.DropDownButton
            Me.StartButton.ToolTipText = "Start monitoring"
            '
            'StopButton
            '
            Me.StopButton.ImageIndex = 1
            Me.StopButton.ToolTipText = "Stop monitoring"
            '
            'ClearButton
            '
            Me.ClearButton.ImageIndex = 3
            Me.ClearButton.ToolTipText = "Clear packet list"
            '
            'AboutButton
            '
            Me.AboutButton.ImageIndex = 2
            Me.AboutButton.ToolTipText = "About..."
            '
            'ToobarImages
            '
            Me.ToobarImages.ImageSize = New System.Drawing.Size(16, 16)
            Me.ToobarImages.ImageStream = CType(resources.GetObject("ToobarImages.ImageStream"), System.Windows.Forms.ImageListStreamer)
            Me.ToobarImages.TransparentColor = System.Drawing.Color.Magenta
            '
            'MainMenu
            '
            Me.MainMenu.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.FileMenu, Me.mnuPlugins, Me.HelpMenu})
            '
            'mnuPlugins
            '
            Me.mnuPlugins.Index = 1
            Me.mnuPlugins.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuPlugManager, Me.MenuItem2})
            Me.mnuPlugins.Text = "Plugins"
            '
            'mnuPlugManager
            '
            Me.mnuPlugManager.Index = 0
            Me.mnuPlugManager.Text = "Plugin Manager"
            '
            'MenuItem2
            '
            Me.MenuItem2.Index = 1
            Me.MenuItem2.Text = "-"
            '
            'HelpMenu
            '
            Me.HelpMenu.Index = 2
            Me.HelpMenu.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.AboutMenuItem})
            Me.HelpMenu.Text = "&Help"
            '
            'frmMain
            '
            Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
            Me.ClientSize = New System.Drawing.Size(600, 367)
            Me.Controls.Add(Me.PacketList)
            Me.Controls.Add(Me.StatusBar)
            Me.Controls.Add(Me.ToolBar)
            Me.Menu = Me.MainMenu
            Me.Name = "frmMain"
            Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
            Me.Text = Application.ProductName & " - [ " & Application.ProductVersion & " ]"
            Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
            Me.ResumeLayout(False)

        End Sub

#End Region

        Private Sub frmMain_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
            Dim hosts() As IPAddress = Dns.Resolve(Dns.GetHostName()).AddressList
            Dim i As Integer

            
            If hosts.Length = 0 Then Throw New NotSupportedException("This computer does not have non-loopback interfaces installed!")
            For i = 0 To hosts.Length - 1
                MonitorMenuItem.MenuItems.Add(hosts(i).ToString(), New EventHandler(AddressOf Me.OnHostsClick))
                HostsMenu.MenuItems.Add(hosts(i).ToString(), New EventHandler(AddressOf Me.OnHostsClick))
            Next

            ReDim m_PacketMonitors(HostsMenu.MenuItems.Count - 1)

            For i = 0 To m_PacketMonitors.Length - 1
                m_PacketMonitors(i) = New Monitor(hosts(i))
                AddHandler m_PacketMonitors(i).NewPacket, AddressOf Me.OnNewPacket
            Next
            m_Packets = New ArrayList

        End Sub
        Private Sub frmMain_Closing(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MyBase.Closing
            OnToolBarClick(Me, New ToolBarButtonClickEventArgs(StopButton))
        End Sub
        Public Sub OnToolBarClick(ByVal sender As Object, ByVal e As ToolBarButtonClickEventArgs) Handles ToolBar.ButtonClick
            Dim i As Integer

            If e.Button Is StopButton Then
                For i = 0 To m_PacketMonitors.Length - 1
                    m_PacketMonitors(i).Stop()
                    HostsMenu.MenuItems(i).Checked = False
                    MonitorMenuItem.MenuItems(i).Checked = False
                Next
                StatusBar.Text = "Stopped monitoring"
            ElseIf e.Button Is StartButton Then
                For i = 0 To m_PacketMonitors.Length - 1
                    Try
                        m_PacketMonitors(i).Start()
                    Catch ex As Exception
                        MsgBox("There was a problem starting the packet monitor for interface " & m_PacketMonitors(i).IP.ToString & vbCrLf & vbCrLf & "[" + ex.Message + "]", MsgBoxStyle.Exclamation)
                        HostsMenu.MenuItems(i).Checked = True
                        MonitorMenuItem.MenuItems(i).Checked = True
                    End Try
                Next
                StatusBar.Text = "Monitoring all interfaces"
            ElseIf e.Button Is ClearButton Then
                PacketList.Items.Clear()
                m_Packets.Clear()
                StatusBar.Text = "Cleared packet list"
            ElseIf e.Button Is AboutButton Then
                If AboutForm Is Nothing Then AboutForm = New frmAbout
                AboutForm.ShowDialog()
            End If
        End Sub
        Public Sub OnHostsClick(ByVal sender As Object, ByVal e As EventArgs)
            Dim index As Integer = CType(sender, MenuItem).Index

            HostsMenu.MenuItems(index).Checked = Not HostsMenu.MenuItems(index).Checked
            MonitorMenuItem.MenuItems(index).Checked = HostsMenu.MenuItems(index).Checked
            If HostsMenu.MenuItems(index).Checked Then
                Try
                    m_PacketMonitors(index).Start()
                Catch ex As Exception
                    MsgBox(ex.ToString, MsgBoxStyle.Exclamation)
                End Try

                StatusBar.Text = "Monitoring " & m_PacketMonitors(index).IP.ToString()
            Else
                m_PacketMonitors(index).Stop()
                StatusBar.Text = "Stopped monitoring " & m_PacketMonitors(index).IP.ToString()
            End If
        End Sub
        Public Sub OnPacketDoubleClick(ByVal sender As Object, ByVal e As EventArgs) Handles PacketList.DoubleClick
            Dim l As ListView = CType(sender, ListView)
            If l.SelectedItems.Count > 0 Then
                Dim pf As frmPacket = New frmPacket(m_Packets(l.SelectedItems(0).Index))
                pf.Show()
            End If
        End Sub
        Private Sub OnNewPacket(ByVal m As Monitor, ByVal p As Packet)
            Dim iP As IPlugin
            
            For Each iP In Plugins
                If Not iP.OnPacketArrive(m.IP, p) Then Exit Sub
            Next

            Dim lstItem As ListViewItem = New ListViewItem
            m_Packets.Add(p)
            m_PacketsSize += p.TotalLength
            Try
                With lstItem
                    .Text = p.Time.ToString
                    .SubItems.Add(p.Protocol.ToString)
                    .SubItems.Add(p.Source.ToString)
                    .SubItems.Add(p.Destination.ToString)
                    .SubItems.Add(p.TotalLength.ToString)
                End With
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try

            PacketList.Items.Add(lstItem)
            StatusBar.Text = String.Format("Intercepted {0} packet(s) [{1} bytes]", m_Packets.Count, m_PacketsSize)
        End Sub
        Private Sub StopMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles StopMenuItem.Click
            OnToolBarClick(Me, New ToolBarButtonClickEventArgs(StopButton))
        End Sub
        Private Sub ClearMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ClearMenuItem.Click
            OnToolBarClick(Me, New ToolBarButtonClickEventArgs(ClearButton))
        End Sub
        Private Sub ExitMenuItem_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ExitMenuItem.Click
            Me.Close()
        End Sub
        Private Sub AboutMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AboutMenuItem.Click
            OnToolBarClick(Me, New ToolBarButtonClickEventArgs(AboutButton))
        End Sub

        Private Sub mnuPlugManager_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuPlugManager.Click
            PluginMgrForm.ShowDialog()
        End Sub

        Private Sub MonitorMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MonitorMenuItem.Click

        End Sub
    End Class
End Namespace
