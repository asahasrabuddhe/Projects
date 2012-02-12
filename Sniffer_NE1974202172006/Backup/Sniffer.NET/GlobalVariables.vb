Imports System.Threading
Namespace Sniffer
    Module GlobalVariables
        Public MainForm As frmMain
        Public AboutForm As frmAbout
        Public SplashForm As frmSplash
        Public PluginMgrForm As frmPluginManager
        Public WithEvents Plugins As PluginManager.PluginCollection

        Public Function AppPath() As String
            Dim sPath As String
            sPath = Application.ExecutablePath()
            If sPath.LastIndexOf("\") > 0 Then sPath = sPath.Substring(0, sPath.LastIndexOf("\"))
            Return sPath
        End Function
        Public Sub Main()
            SplashForm = New frmSplash
            PluginMgrForm = New frmPluginManager
            MainForm = New frmMain
            SplashForm.Show()
            LoadPlugins()
            System.Windows.Forms.Application.DoEvents()
            Thread.Sleep(1000)
            MainForm.Show()
            SplashForm.Dispose()
            SplashForm = Nothing
            Application.Run(MainForm)
        End Sub

        Public Sub LoadPlugins()
            Dim pl As New PluginManager.PluginLocator
            Dim plug As PluginManager.IPlugin
            Dim lstItem As ListViewItem
            Plugins = pl.FindPlugins(AppPath() & "\Plugins")
            If Plugins Is Nothing Then Exit Sub
            For Each plug In Plugins
                If Not MainForm.mnuPlugins.Enabled Then MainForm.mnuPlugins.Enabled = True
                lstItem = New ListViewItem
                lstItem.Text = plug.Name
                SplashForm.lblStatus.Text = "Loading Plugins (" & plug.Name & ")..."
                lstItem.SubItems.Add(plug.Version)
                lstItem.SubItems.Add(plug.Author)
                lstItem.SubItems.Add(plug.Description)
                lstItem.ImageIndex = plug.State
                lstItem.Tag = plug
                PluginMgrForm.lisPlugins.Items.Add(lstItem)
                Dim mnuItem As MenuItem = MainForm.mnuPlugins.MenuItems.Add(plug.Name)
                AddHandler mnuItem.Select, New EventHandler(AddressOf OnMenuSelect)
                mnuItem.MenuItems.Add("About", New EventHandler(AddressOf PluginAction))
                mnuItem.MenuItems.Add("-", New EventHandler(AddressOf PluginAction))
                mnuItem.MenuItems.Add("Configure", New EventHandler(AddressOf PluginAction))
                mnuItem.MenuItems.Add("-", New EventHandler(AddressOf PluginAction))
                mnuItem.MenuItems.Add("Start", New EventHandler(AddressOf PluginAction))
                mnuItem.MenuItems.Add("Stop", New EventHandler(AddressOf PluginAction))
                mnuItem.MenuItems.Add("Pause", New EventHandler(AddressOf PluginAction))
                mnuItem.MenuItems.Add("Resume", New EventHandler(AddressOf PluginAction))
            Next
        End Sub

        Public Sub OnMenuSelect(ByVal sender As Object, ByVal e As System.EventArgs)
            Dim mnuItem As MenuItem
            Dim plug As PluginManager.IPlugin

            mnuItem = CType(sender, MenuItem)
            plug = Plugins.Item(mnuItem.Text)

            mnuItem.MenuItems(4).Enabled = False
            mnuItem.MenuItems(5).Enabled = False
            mnuItem.MenuItems(6).Enabled = False
            mnuItem.MenuItems(7).Enabled = False

            Select Case plug.State
                Case PluginManager.PluginState.Paused
                    mnuItem.MenuItems(5).Enabled = True
                    mnuItem.MenuItems(7).Enabled = True

                Case PluginManager.PluginState.Running
                    mnuItem.MenuItems(5).Enabled = True
                    mnuItem.MenuItems(6).Enabled = True

                Case PluginManager.PluginState.Stopped
                    mnuItem.MenuItems(4).Enabled = True
            End Select
        End Sub

        Public Sub PluginAction(ByVal sender As Object, ByVal e As EventArgs)
            Dim mnuItem As MenuItem
            Dim plug As PluginManager.IPlugin

            mnuItem = CType(sender, MenuItem)
            plug = Plugins.Item(CType(mnuItem.Parent, MenuItem).Text)

            PluginMgrForm.mnuStart.Enabled = False
            PluginMgrForm.mnuStop.Enabled = False
            PluginMgrForm.mnuPause.Enabled = False
            PluginMgrForm.mnuResume.Enabled = False

            Select Case plug.State
                Case PluginManager.PluginState.Paused
                    PluginMgrForm.mnuStop.Enabled = True
                    PluginMgrForm.mnuResume.Enabled = True

                Case PluginManager.PluginState.Running
                    PluginMgrForm.mnuStop.Enabled = True
                    PluginMgrForm.mnuPause.Enabled = True

                Case PluginManager.PluginState.Stopped
                    PluginMgrForm.mnuStart.Enabled = True
            End Select


            Select Case LCase(mnuItem.Text)
                Case "about"
                    plug.OnAbout()
                Case "configure"
                    plug.OnConfigure()

                Case "start"
                    plug.Start()

                Case "stop"
                    plug.Stop()

                Case "pause"
                    plug.Pause()

                Case "resume"
                    plug.Resume()

            End Select
        End Sub


        Private Sub Plugins_PluginStateChanged(ByVal Plugin As PluginManager.IPlugin, ByVal PreviousState As PluginManager.PluginState, ByVal CurrentState As PluginManager.PluginState) Handles Plugins.PluginStateChanged
            'MsgBox(Plugin.Name & "'s State Changed From " & PreviousState.ToString & " to " & CurrentState.ToString, MsgBoxStyle.Information)
            Dim lstItem As ListViewItem
            For Each lstItem In PluginMgrForm.lisPlugins.Items
                If lstItem.Tag Is Plugin Then
                    lstItem.ImageIndex = CurrentState
                End If
            Next

        End Sub
    End Module
End Namespace