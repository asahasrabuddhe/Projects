Imports System
Imports System.Text
Imports System.Net
Imports System.Net.Sockets
Imports System.Runtime.InteropServices

Namespace PackMon

    Public Class Monitor
        Public Delegate Sub NewPacketEventHandler(ByVal m As Monitor, ByVal p As Packet)
        Public Event NewPacket As NewPacketEventHandler
        Private m_Monitor As Socket
        Private m_IP As IPAddress
        Private m_Buffer(65535) As Byte
        Private Const IOC_VENDOR As Integer = &H18000000
        Private Const IOC_IN As Integer = -2147483648
        Private Const SIO_RCVALL As Integer = IOC_IN Or IOC_VENDOR Or 1
        Private Const SECURITY_BUILTIN_DOMAIN_RID As Integer = &H20
        Private Const DOMAIN_ALIAS_RID_ADMINS As Integer = &H220


        Public Sub New(ByVal ip As IPAddress)

            If Not Environment.OSVersion.Platform = PlatformID.Win32NT And Environment.OSVersion.Version.Major < 5 Then Throw New NotSupportedException("This program requires Windows 2000, Windows XP or Windows .NET Server!")
            m_IP = ip

        End Sub

        Protected Overrides Sub Finalize()
            MyBase.Finalize()
        End Sub


        Public Sub [Start]()
            If m_Monitor Is Nothing Then
                Try
                    m_Monitor = New Socket(AddressFamily.InterNetwork, SocketType.Raw, ProtocolType.IP)
                    m_Monitor.Bind(New IPEndPoint(IP, 0))
                    m_Monitor.IOControl(SIO_RCVALL, BitConverter.GetBytes(1), Nothing)
                    m_Monitor.BeginReceive(m_Buffer, 0, m_Buffer.Length, SocketFlags.None, New AsyncCallback(AddressOf OnReceive), Nothing)
                Catch ex As Exception
                    m_Monitor = Nothing
                    Throw ex
                End Try
            End If
        End Sub


        Public Sub [Stop]()
            If Not m_Monitor Is Nothing Then m_Monitor.Close()
            m_Monitor = Nothing
        End Sub



        Private Sub OnReceive(ByVal ar As IAsyncResult)
            Try
                Dim received As Integer = m_Monitor.EndReceive(ar)
                Try
                    If Not m_Monitor Is Nothing Then
                        Dim pkt(received - 1) As Byte
                        Array.Copy(Buffer, 0, pkt, 0, received)
                        OnNewPacket(New Packet(pkt))
                    End If
                Catch ex As Exception
                    'DO NOTHING SIMPLE IGNORE THE EXCEPTION
                End Try
                m_Monitor.BeginReceive(Buffer, 0, Buffer.Length, SocketFlags.None, New AsyncCallback(AddressOf OnReceive), Nothing)
            Catch
                [Stop]()
            End Try
        End Sub

        Public ReadOnly Property IP() As IPAddress
            Get
                Return m_IP
            End Get
        End Property

        Protected ReadOnly Property Buffer() As Byte()
            Get
                Return m_Buffer
            End Get
        End Property

        Protected Sub OnNewPacket(ByVal p As Packet)
            RaiseEvent NewPacket(Me, p)
        End Sub
    End Class

End Namespace
