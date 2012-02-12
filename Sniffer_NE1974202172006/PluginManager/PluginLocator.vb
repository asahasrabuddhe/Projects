Imports System
Imports System.Collections
Imports System.Reflection

Namespace PluginManager
    <Serializable()> _
    Public Class PluginLocator
        Public Function FindPlugins(ByVal path As String) As PluginCollection

            If Not System.IO.Directory.Exists(path) Then Exit Function

            Dim results As PluginCollection = New PluginCollection
            Dim files() As String = System.IO.Directory.GetFiles(path, "*.*")
            Dim iface As Type
            Dim t As Type
            Dim file As String

            For Each file In files
                Try
                    Dim asm As [Assembly] = [Assembly].LoadFrom(file)
                    For Each t In asm.GetTypes()
                        For Each iface In t.GetInterfaces()
                            If GetType(IPlugin) Is iface Then
                                ' add the plugin data to the results
                                Dim plug As IPlugin = CType(Activator.CreateInstance(t), IPlugin)
                                If plug.OnLoad() Then
                                    AddHandler plug.StateChanged, AddressOf results.StateChanged
                                    results.Add(plug)
                                End If
                            End If
                        Next
                    Next
                Catch ex As Exception

                End Try

            Next
            Return results
        End Function

    End Class
End Namespace
