using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using SpeechLib;

namespace SR
{
	/// <summary>
	/// show commands available to speech
	/// </summary>
	public class frmCommands : System.Windows.Forms.Form
	{
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.TreeView treeView1;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		//rules an phrases

		public frmCommands()
		{
			//
			// Required for Windows Form Designer support
			//
			InitializeComponent();

			//
			// TODO: Add any constructor code after InitializeComponent call
			//
		}

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			if( disposing )
			{
				if(components != null)
				{
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmCommands));
			this.label1 = new System.Windows.Forms.Label();
			this.button1 = new System.Windows.Forms.Button();
			this.label3 = new System.Windows.Forms.Label();
			this.label9 = new System.Windows.Forms.Label();
			this.label10 = new System.Windows.Forms.Label();
			this.label11 = new System.Windows.Forms.Label();
			this.treeView1 = new System.Windows.Forms.TreeView();
			this.SuspendLayout();
			// 
			// label1
			// 
			this.label1.BackColor = System.Drawing.Color.Transparent;
			this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, (System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic), System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label1.Location = new System.Drawing.Point(72, 24);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(176, 24);
			this.label1.TabIndex = 2;
			this.label1.Text = "Commands available";
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(376, 232);
			this.button1.Name = "button1";
			this.button1.TabIndex = 3;
			this.button1.Text = "Close";
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// label3
			// 
			this.label3.BackColor = System.Drawing.SystemColors.Window;
			this.label3.ForeColor = System.Drawing.SystemColors.InactiveCaption;
			this.label3.Location = new System.Drawing.Point(56, 232);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(24, 16);
			this.label3.TabIndex = 4;
			this.label3.Text = "OR";
			// 
			// label9
			// 
			this.label9.BackColor = System.Drawing.SystemColors.Window;
			this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label9.ForeColor = System.Drawing.SystemColors.InactiveCaption;
			this.label9.Location = new System.Drawing.Point(16, 232);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(40, 16);
			this.label9.TabIndex = 10;
			this.label9.Text = "\"Hide\"";
			// 
			// label10
			// 
			this.label10.BackColor = System.Drawing.SystemColors.Window;
			this.label10.ForeColor = System.Drawing.SystemColors.InactiveCaption;
			this.label10.Location = new System.Drawing.Point(128, 232);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(104, 16);
			this.label10.TabIndex = 11;
			this.label10.Text = "To hide this form.";
			// 
			// label11
			// 
			this.label11.BackColor = System.Drawing.SystemColors.Window;
			this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label11.ForeColor = System.Drawing.SystemColors.InactiveCaption;
			this.label11.Location = new System.Drawing.Point(80, 232);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(48, 16);
			this.label11.TabIndex = 12;
			this.label11.Text = "\"Close\"";
			// 
			// treeView1
			// 
			this.treeView1.ImageIndex = -1;
			this.treeView1.Location = new System.Drawing.Point(16, 72);
			this.treeView1.Name = "treeView1";
			this.treeView1.Nodes.AddRange(new System.Windows.Forms.TreeNode[] {
																				  new System.Windows.Forms.TreeNode("deactivate", new System.Windows.Forms.TreeNode[] {
																																										  new System.Windows.Forms.TreeNode("close speech recognition"),
																																										  new System.Windows.Forms.TreeNode("about speech recognition", new System.Windows.Forms.TreeNode[] {
																																																																				new System.Windows.Forms.TreeNode("close"),
																																																																				new System.Windows.Forms.TreeNode("hide"),
																																																																				new System.Windows.Forms.TreeNode("command list")}),
																																										  new System.Windows.Forms.TreeNode("activate", new System.Windows.Forms.TreeNode[] {
																																																																new System.Windows.Forms.TreeNode("deactivate"),
																																																																new System.Windows.Forms.TreeNode("up"),
																																																																new System.Windows.Forms.TreeNode("down"),
																																																																new System.Windows.Forms.TreeNode("right"),
																																																																new System.Windows.Forms.TreeNode("left"),
																																																																new System.Windows.Forms.TreeNode("enter"),
																																																																new System.Windows.Forms.TreeNode("ok"),
																																																																new System.Windows.Forms.TreeNode("run"),
																																																																new System.Windows.Forms.TreeNode("escape"),
																																																																new System.Windows.Forms.TreeNode("cancel"),
																																																																new System.Windows.Forms.TreeNode("tab"),
																																																																new System.Windows.Forms.TreeNode("menu..."),
																																																																new System.Windows.Forms.TreeNode("page up"),
																																																																new System.Windows.Forms.TreeNode("page down"),
																																																																new System.Windows.Forms.TreeNode("shut down", new System.Windows.Forms.TreeNode[] {
																																																																																					   new System.Windows.Forms.TreeNode("right"),
																																																																																					   new System.Windows.Forms.TreeNode("tab"),
																																																																																					   new System.Windows.Forms.TreeNode("shift tab"),
																																																																																					   new System.Windows.Forms.TreeNode("escape"),
																																																																																					   new System.Windows.Forms.TreeNode("cancel"),
																																																																																					   new System.Windows.Forms.TreeNode("enter"),
																																																																																					   new System.Windows.Forms.TreeNode("ok"),
																																																																																					   new System.Windows.Forms.TreeNode("left"),
																																																																																					   new System.Windows.Forms.TreeNode("commands list")}),
																																																																new System.Windows.Forms.TreeNode("close"),
																																																																new System.Windows.Forms.TreeNode("switch program", new System.Windows.Forms.TreeNode[] {
																																																																																							new System.Windows.Forms.TreeNode("right"),
																																																																																							new System.Windows.Forms.TreeNode("tab"),
																																																																																							new System.Windows.Forms.TreeNode("left"),
																																																																																							new System.Windows.Forms.TreeNode("shift tab"),
																																																																																							new System.Windows.Forms.TreeNode("enter"),
																																																																																							new System.Windows.Forms.TreeNode("ok"),
																																																																																							new System.Windows.Forms.TreeNode("escape"),
																																																																																							new System.Windows.Forms.TreeNode("cancel"),
																																																																																							new System.Windows.Forms.TreeNode("command list")}),
																																																																new System.Windows.Forms.TreeNode("start", new System.Windows.Forms.TreeNode[] {
																																																																																				   new System.Windows.Forms.TreeNode("deactivate"),
																																																																																				   new System.Windows.Forms.TreeNode("up"),
																																																																																				   new System.Windows.Forms.TreeNode("down"),
																																																																																				   new System.Windows.Forms.TreeNode("right"),
																																																																																				   new System.Windows.Forms.TreeNode("left"),
																																																																																				   new System.Windows.Forms.TreeNode("enter"),
																																																																																				   new System.Windows.Forms.TreeNode("ok"),
																																																																																				   new System.Windows.Forms.TreeNode("run"),
																																																																																				   new System.Windows.Forms.TreeNode("escape"),
																																																																																				   new System.Windows.Forms.TreeNode("tab"),
																																																																																				   new System.Windows.Forms.TreeNode("programs"),
																																																																																				   new System.Windows.Forms.TreeNode("documents"),
																																																																																				   new System.Windows.Forms.TreeNode("settings"),
																																																																																				   new System.Windows.Forms.TreeNode("search"),
																																																																																				   new System.Windows.Forms.TreeNode("help"),
																																																																																				   new System.Windows.Forms.TreeNode("run"),
																																																																																				   new System.Windows.Forms.TreeNode("commands list")}),
																																																																new System.Windows.Forms.TreeNode("press key", new System.Windows.Forms.TreeNode[] {
																																																																																					   new System.Windows.Forms.TreeNode("stop"),
																																																																																					   new System.Windows.Forms.TreeNode("release"),
																																																																																					   new System.Windows.Forms.TreeNode("up"),
																																																																																					   new System.Windows.Forms.TreeNode("down"),
																																																																																					   new System.Windows.Forms.TreeNode("right"),
																																																																																					   new System.Windows.Forms.TreeNode("left"),
																																																																																					   new System.Windows.Forms.TreeNode("commands list")}),
																																																																new System.Windows.Forms.TreeNode("commands list", new System.Windows.Forms.TreeNode[] {
																																																																																						   new System.Windows.Forms.TreeNode("close"),
																																																																																						   new System.Windows.Forms.TreeNode("hide")}),
																																																																new System.Windows.Forms.TreeNode("favorites programs"),
																																																																new System.Windows.Forms.TreeNode("Alphabetic State...", new System.Windows.Forms.TreeNode[] {
																																																																																								 new System.Windows.Forms.TreeNode("A-Z"),
																																																																																								 new System.Windows.Forms.TreeNode("exit aphabetic state"),
																																																																																								 new System.Windows.Forms.TreeNode("enter"),
																																																																																								 new System.Windows.Forms.TreeNode("ok"),
																																																																																								 new System.Windows.Forms.TreeNode("escape"),
																																																																																								 new System.Windows.Forms.TreeNode("cancel"),
																																																																																								 new System.Windows.Forms.TreeNode("back"),
																																																																																								 new System.Windows.Forms.TreeNode("back space"),
																																																																																								 new System.Windows.Forms.TreeNode("at"),
																																																																																								 new System.Windows.Forms.TreeNode("under line"),
																																																																																								 new System.Windows.Forms.TreeNode("dash"),
																																																																																								 new System.Windows.Forms.TreeNode("dot"),
																																																																																								 new System.Windows.Forms.TreeNode("back slash"),
																																																																																								 new System.Windows.Forms.TreeNode("no"),
																																																																																								 new System.Windows.Forms.TreeNode("command list")}),
																																																																new System.Windows.Forms.TreeNode("Numeric State...", new System.Windows.Forms.TreeNode[] {
																																																																																							  new System.Windows.Forms.TreeNode("0-9"),
																																																																																							  new System.Windows.Forms.TreeNode("exit numeric state"),
																																																																																							  new System.Windows.Forms.TreeNode("enter"),
																																																																																							  new System.Windows.Forms.TreeNode("ok"),
																																																																																							  new System.Windows.Forms.TreeNode("escape"),
																																																																																							  new System.Windows.Forms.TreeNode("cancel"),
																																																																																							  new System.Windows.Forms.TreeNode("back"),
																																																																																							  new System.Windows.Forms.TreeNode("back space"),
																																																																																							  new System.Windows.Forms.TreeNode("plus"),
																																																																																							  new System.Windows.Forms.TreeNode("minus"),
																																																																																							  new System.Windows.Forms.TreeNode("mul"),
																																																																																							  new System.Windows.Forms.TreeNode("multiply"),
																																																																																							  new System.Windows.Forms.TreeNode("div"),
																																																																																							  new System.Windows.Forms.TreeNode("divide"),
																																																																																							  new System.Windows.Forms.TreeNode("equal"),
																																																																																							  new System.Windows.Forms.TreeNode("commands list")})}),
																																										  new System.Windows.Forms.TreeNode("command list")})});
			this.treeView1.SelectedImageIndex = -1;
			this.treeView1.Size = new System.Drawing.Size(424, 152);
			this.treeView1.TabIndex = 15;
			// 
			// frmCommands
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(456, 262);
			this.Controls.AddRange(new System.Windows.Forms.Control[] {
																		  this.treeView1,
																		  this.label11,
																		  this.label10,
																		  this.label9,
																		  this.label3,
																		  this.button1,
																		  this.label1});
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "frmCommands";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Commands List";
			this.TopMost = true;
			this.Load += new System.EventHandler(this.frmCommands_Load);
			this.ResumeLayout(false);

		}
		#endregion

		private void button1_Click(object sender, System.EventArgs e)
		{
			// close form
			Close();
		}

		private void frmCommands_Load(object sender, System.EventArgs e)
		{
			string str1=(string)this.Tag;
			str1=str1.ToLower();
			Text="Command List - "+str1;

			//if it contains menu... 0
			if (str1.IndexOf("menu")!=-1)
				str1="menu";

			treeView1.ExpandAll();
			treeView1.Select();

			//first node
			if (treeView1.Nodes[0].Text.ToLower()==str1)
			{
				treeView1.Nodes[0].EnsureVisible();
				treeView1.SelectedNode=treeView1.Nodes[0];
			}
			else
			{
				int i;

				//second node
				for (i=0;i<treeView1.Nodes[0].Nodes.Count;i++)
					if (treeView1.Nodes[0].Nodes[i].Text.ToLower()==str1)
					{
						treeView1.Nodes[0].Nodes[i].EnsureVisible();
						treeView1.SelectedNode=treeView1.Nodes[0].Nodes[i];
						break;
					}

				//third node
				if (i==treeView1.Nodes[0].Nodes.Count)
				{
					for (i=0;i<treeView1.Nodes[0].Nodes[2].Nodes.Count;i++)
						if (treeView1.Nodes[0].Nodes[2].Nodes[i].Text.ToLower()==str1)
						{
							treeView1.Nodes[0].Nodes[2].Nodes[i].EnsureVisible();
							treeView1.SelectedNode=treeView1.Nodes[0].Nodes[2].Nodes[i];
							break;
						}
				}
			}
            treeView1.Focus();
		}
	}
}
