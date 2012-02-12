using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using SpeechLib;

namespace SR
{
	/// <summary>
	/// Summary description for frmAbout.
	/// </summary>
	public class frmProfileChange : System.Windows.Forms.Form
	{
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.CheckedListBox checkedListBox1;
		private System.Windows.Forms.Button button2;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		public frmProfileChange()
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
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmProfileChange));
			this.button1 = new System.Windows.Forms.Button();
			this.label3 = new System.Windows.Forms.Label();
			this.checkedListBox1 = new System.Windows.Forms.CheckedListBox();
			this.button2 = new System.Windows.Forms.Button();
			this.SuspendLayout();
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(240, 200);
			this.button1.Name = "button1";
			this.button1.TabIndex = 3;
			this.button1.Text = "Cancel";
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// label3
			// 
			this.label3.BackColor = System.Drawing.Color.Transparent;
			this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, (System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic), System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label3.Location = new System.Drawing.Point(72, 24);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(240, 24);
			this.label3.TabIndex = 5;
			this.label3.Text = "Profiles";
			// 
			// checkedListBox1
			// 
			this.checkedListBox1.CheckOnClick = true;
			this.checkedListBox1.Location = new System.Drawing.Point(8, 72);
			this.checkedListBox1.Name = "checkedListBox1";
			this.checkedListBox1.Size = new System.Drawing.Size(304, 109);
			this.checkedListBox1.TabIndex = 6;
			this.checkedListBox1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.checkedListBox1_MouseDown);
			// 
			// button2
			// 
			this.button2.Location = new System.Drawing.Point(160, 200);
			this.button2.Name = "button2";
			this.button2.TabIndex = 7;
			this.button2.Text = "OK";
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// frmProfileChange
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(320, 232);
			this.Controls.AddRange(new System.Windows.Forms.Control[] {
																		  this.button2,
																		  this.checkedListBox1,
																		  this.label3,
																		  this.button1});
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmProfileChange";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "User Profile Change";
			this.TopMost = true;
			this.Load += new System.EventHandler(this.frmProfileChange_Load);
			this.ResumeLayout(false);

		}
		#endregion

		SpeechLib.SpSharedRecoContext objRecoContext=null;
		SpeechLib.ISpeechObjectTokens objTokens=null;

		private void button1_Click(object sender, System.EventArgs e)
		{
			Close();
		}

		private void frmProfileChange_Load(object sender, System.EventArgs e)
		{
			//get objRecoContext from this.Tag
			objRecoContext=(SpeechLib.SpSharedRecoContext)this.Tag;

			//write all profiles to checkBoxList
			string str10="",str11="";
			objTokens=objRecoContext.Recognizer.GetProfiles(str10,str11);

			for (int i=0;i<objTokens.Count;i++)
			{
				checkedListBox1.Items.Add(objTokens.Item(i).GetDescription(0));
				
				if (objRecoContext.Recognizer.Profile.GetDescription(0)==objTokens.Item(i).GetDescription(0))
					checkedListBox1.SetItemChecked(i,true);
			}
		}

		private void checkedListBox1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e)
		{
			for (int i=0;i<checkedListBox1.Items.Count;i++)
				if (checkedListBox1.GetItemChecked(i)==true)
					checkedListBox1.SetItemChecked(i,false);
		}

		private void button2_Click(object sender, System.EventArgs e)
		{
			int i;
			for (i=0;i<checkedListBox1.Items.Count;i++)
				if (checkedListBox1.GetItemChecked(i)==true)
					break;

			//if something chosen, change profile
			if (i!=checkedListBox1.Items.Count)
			{
				objRecoContext.Recognizer.Profile=objTokens.Item(i);
				Close();
			}
			else
				MessageBox.Show("You have to choose a user profile !","ERROR - Choosing profile"); 
		}
	}
}
