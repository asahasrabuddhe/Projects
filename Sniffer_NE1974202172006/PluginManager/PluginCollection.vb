Namespace PluginManager

    Public Class PluginCollection
        Inherits System.Collections.CollectionBase
        Dim iPluginCollection As Collection
        Public Event PluginStateChanged(ByVal Plugin As IPlugin, ByVal PreviousState As PluginState, ByVal CurrentState As PluginState)

        Public Overridable Sub Add(ByVal Plugin As IPlugin)
            innerlist.Add(Plugin)
        End Sub

        Public Overridable Sub AddRange(ByVal Plugin() As IPlugin)
            innerlist.AddRange(Plugin)
        End Sub

        Public Function Item(ByVal Index As Int32) As IPlugin
            Return innerlist.Item(Index)
        End Function


        Public Function Item(ByVal Name As String) As IPlugin
            Dim plug As IPlugin
            For Each plug In innerlist
                If LCase(plug.Name).CompareTo(LCase(Name)) = 0 Then Return plug
            Next
        End Function

        Public Sub Remove(ByVal Plugin As IPlugin)
            innerlist.Remove(Plugin)
        End Sub

        Public Sub New()
            iPluginCollection = New Collection
        End Sub

        Protected Overrides Sub Finalize()
            iPluginCollection = Nothing
            MyBase.Finalize()
        End Sub

        Public Sub StateChanged(ByVal Plugin As IPlugin, ByVal PreviousState As PluginState, ByVal CurrentState As PluginState)
            RaiseEvent PluginStateChanged(Plugin, PreviousState, CurrentState)
        End Sub

    End Class
End Namespace
