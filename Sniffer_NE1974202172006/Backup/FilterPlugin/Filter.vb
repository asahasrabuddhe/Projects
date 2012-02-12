
Namespace FilterPlugin
    Public Class Filter
        Implements v2Softwares.PluginManager.IPlugin
        Public Event StateChanged(ByVal Plugin As PluginManager.IPlugin, ByVal PreviousState As PluginManager.PluginState, ByVal CurrentState As PluginManager.PluginState) Implements PluginManager.IPlugin.StateChanged
        Private Const _Author As String = "v2Softwares"
        Private Const _Description As String = "Sample Filter Plugin when loaded discard all packets except all packets send or recieved from Port 80 on TCP Protocol Stack, ie HTTP Protocol"
        Private Const _Name As String = "FilterPlugin"
        Private _Version As String = "0.1"
        Private _State As PluginManager.PluginState

        Public Function OnLoad() As Boolean Implements PluginManager.IPlugin.OnLoad
            Return True
        End Function
        Public Sub OnConfigure() Implements PluginManager.IPlugin.OnConfigure
            MsgBox("There is nothing to configure yet.")
        End Sub
        Public Sub OnAbout() Implements PluginManager.IPlugin.OnAbout
            MsgBox(_Name & " By " & _Author & vbCr & "Version: " & _Version & vbCr & _Description, MsgBoxStyle.Information)
        End Sub
        Public ReadOnly Property Author() As String Implements PluginManager.IPlugin.Author
            Get
                Return _Author
            End Get
        End Property

        Public ReadOnly Property Description() As String Implements PluginManager.IPlugin.Description
            Get
                Return _Description
            End Get
        End Property

        Public Function OnPacketArrive(ByVal IP As System.Net.IPAddress, ByVal Packet As PackMon.Packet) As Boolean Implements PluginManager.IPlugin.OnPacketArrive
            If Not State = PluginManager.PluginState.Running Then
                Return True
            Else

                'This is an incoming packet
                If IP.ToString.CompareTo(Packet.DestinationAddress) = 0 Then
                    Return IncomingPacketFilter(IP, Packet)
                Else
                    'This is an outgoing packet
                    Return OutgoingPacketFilter(IP, Packet)
                End If

            End If
        End Function

        Public Property State() As PluginManager.PluginState Implements PluginManager.IPlugin.State
            Get
                Return _State
            End Get
            Set(ByVal Value As PluginManager.PluginState)
                Dim prevstate As PluginManager.PluginState
                prevstate = _State
                _State = Value
                RaiseEvent StateChanged(Me, prevstate, _State)
            End Set
        End Property

        Public Function DataExchange(ByVal objData As Object) As Object Implements PluginManager.IPlugin.DataExchange
            Return Nothing
        End Function

        Public ReadOnly Property Name() As String Implements PluginManager.IPlugin.Name
            Get
                Return _Name
            End Get
        End Property

        Public Function Start() As Boolean Implements PluginManager.IPlugin.Start
            State = PluginManager.PluginState.Running
            Return True
        End Function

        Public Function [Stop]() As Boolean Implements PluginManager.IPlugin.Stop
            State = PluginManager.PluginState.Stopped
            Return True
        End Function

        Public Function Pause() As Boolean Implements PluginManager.IPlugin.Pause
            State = PluginManager.PluginState.Paused
            Return True
        End Function

        Public Function [Resume]() As Boolean Implements PluginManager.IPlugin.Resume
            State = PluginManager.PluginState.Running
            Return True
        End Function

        Public ReadOnly Property Version() As String Implements PluginManager.IPlugin.Version
            Get
                Return _Version
            End Get
        End Property

        Private Function IncomingPacketFilter(ByVal IP As System.Net.IPAddress, ByVal p As PackMon.Packet) As Boolean
            If p.Protocol = PackMon.Protocol.Tcp And p.SourcePort = 80 Then
                Return True
            Else
                Return False
            End If
        End Function

        Private Function OutgoingPacketFilter(ByVal IP As System.Net.IPAddress, ByVal p As PackMon.Packet) As Boolean
            If p.Protocol = PackMon.Protocol.Tcp And p.DestinationPort = 80 Then
                Return True
            Else
                Return False
            End If
        End Function


    End Class
End Namespace
