Imports v2Softwares.PackMon

Namespace Sniffer

    Public Class frmPacket
        Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "



        Public Sub New(ByVal p As Packet)
            If p Is Nothing Then Throw New ArgumentNullException
            InitializeComponent()
            m_Packet = p
        End Sub

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
        Friend WithEvents RawText As System.Windows.Forms.TextBox
        Friend WithEvents panel1 As System.Windows.Forms.Panel
        Friend WithEvents InfoList As System.Windows.Forms.ListView
        Friend WithEvents InfoHeader As System.Windows.Forms.ColumnHeader
        Friend WithEvents ValueHeader As System.Windows.Forms.ColumnHeader
        Friend WithEvents splitter1 As System.Windows.Forms.Splitter
        <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
            Me.RawText = New System.Windows.Forms.TextBox
            Me.panel1 = New System.Windows.Forms.Panel
            Me.InfoList = New System.Windows.Forms.ListView
            Me.InfoHeader = New System.Windows.Forms.ColumnHeader
            Me.ValueHeader = New System.Windows.Forms.ColumnHeader
            Me.splitter1 = New System.Windows.Forms.Splitter
            Me.panel1.SuspendLayout()
            Me.SuspendLayout()
            '
            'RawText
            '
            Me.RawText.Dock = System.Windows.Forms.DockStyle.Fill
            Me.RawText.Font = New System.Drawing.Font("Courier New", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
            Me.RawText.Location = New System.Drawing.Point(0, 216)
            Me.RawText.Multiline = True
            Me.RawText.Name = "RawText"
            Me.RawText.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
            Me.RawText.Size = New System.Drawing.Size(487, 230)
            Me.RawText.TabIndex = 7
            Me.RawText.Text = ""
            '
            'panel1
            '
            Me.panel1.Controls.Add(Me.InfoList)
            Me.panel1.Dock = System.Windows.Forms.DockStyle.Top
            Me.panel1.Location = New System.Drawing.Point(0, 8)
            Me.panel1.Name = "panel1"
            Me.panel1.Size = New System.Drawing.Size(487, 208)
            Me.panel1.TabIndex = 5
            '
            'InfoList
            '
            Me.InfoList.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.InfoHeader, Me.ValueHeader})
            Me.InfoList.Dock = System.Windows.Forms.DockStyle.Fill
            Me.InfoList.FullRowSelect = True
            Me.InfoList.GridLines = True
            Me.InfoList.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable
            Me.InfoList.Location = New System.Drawing.Point(0, 0)
            Me.InfoList.Name = "InfoList"
            Me.InfoList.Size = New System.Drawing.Size(487, 208)
            Me.InfoList.TabIndex = 0
            Me.InfoList.View = System.Windows.Forms.View.Details
            '
            'InfoHeader
            '
            Me.InfoHeader.Text = "Information Type"
            Me.InfoHeader.Width = 237
            '
            'ValueHeader
            '
            Me.ValueHeader.Text = "Value"
            Me.ValueHeader.Width = 210
            '
            'splitter1
            '
            Me.splitter1.Cursor = System.Windows.Forms.Cursors.NoMoveVert
            Me.splitter1.Dock = System.Windows.Forms.DockStyle.Top
            Me.splitter1.Location = New System.Drawing.Point(0, 0)
            Me.splitter1.Name = "splitter1"
            Me.splitter1.Size = New System.Drawing.Size(487, 8)
            Me.splitter1.TabIndex = 6
            Me.splitter1.TabStop = False
            '
            'frmPacket
            '
            Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
            Me.ClientSize = New System.Drawing.Size(487, 446)
            Me.Controls.Add(Me.RawText)
            Me.Controls.Add(Me.panel1)
            Me.Controls.Add(Me.splitter1)
            Me.Name = "frmPacket"
            Me.Text = "Packet"
            Me.panel1.ResumeLayout(False)
            Me.ResumeLayout(False)

        End Sub

#End Region

        Dim m_Packet As Packet

        Private Sub PacketForm_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
            RawText.Text = m_Packet.ToString()
            InfoList.Items.Add(New ListViewItem(New String() {"Time", m_Packet.Time.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Source", m_Packet.Source}))
            InfoList.Items.Add(New ListViewItem(New String() {"Destination", m_Packet.Destination}))
            InfoList.Items.Add(New ListViewItem(New String() {"Protocol", m_Packet.Protocol.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Time To Live", m_Packet.TimeToLive.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Version", m_Packet.Version.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Header Length", m_Packet.HeaderLength.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Precedence", m_Packet.Precedence.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Delay", m_Packet.Delay.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Throughput", m_Packet.Throughput.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Reliability", m_Packet.Reliability.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Total Length", m_Packet.TotalLength.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Identification", m_Packet.Identification.ToString()}))
            InfoList.Items.Add(New ListViewItem(New String() {"Checksum", m_Packet.Checksum(0).ToString("X2") + m_Packet.Checksum(1).ToString("X2")}))
        End Sub
    End Class
End Namespace
