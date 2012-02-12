Imports v2Softwares.PackMon

Namespace PluginManager
    Public Enum PluginState
        Stopped = 0
        Running = 1
        Paused = 2
        [Error] = 3
    End Enum
    Public Interface IPlugin
        Event StateChanged(ByVal Plugin As IPlugin, ByVal PreviousState As PluginManager.PluginState, ByVal CurrentState As PluginManager.PluginState)
        ReadOnly Property Name() As String
        ReadOnly Property Author() As String
        ReadOnly Property Description() As String
        ReadOnly Property Version() As String
        Property State() As PluginState
        Function Start() As Boolean
        Function [Stop]() As Boolean
        Function Pause() As Boolean
        Function [Resume]() As Boolean
        Function OnPacketArrive(ByVal IP As System.Net.IPAddress, ByVal Packet As Packet) As Boolean
        Function DataExchange(ByVal objData As Object) As Object
        Function OnLoad() As Boolean
        Sub OnAbout()
        Sub OnConfigure()
    End Interface
End Namespace