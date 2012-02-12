using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Xml;

namespace SR
{
	/// <summary>
	/// list of favorites programs
	/// </summary>
	public class frmFavorites : System.Windows.Forms.Form
	{
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label4;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		public frmFavorites()
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
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmFavorites));
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.button1 = new System.Windows.Forms.Button();
			this.label3 = new System.Windows.Forms.Label();
			this.label9 = new System.Windows.Forms.Label();
			this.label10 = new System.Windows.Forms.Label();
			this.label11 = new System.Windows.Forms.Label();
			this.label7 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// label1
			// 
			this.label1.BackColor = System.Drawing.Color.Transparent;
			this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, (System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic), System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label1.Location = new System.Drawing.Point(72, 24);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(160, 24);
			this.label1.TabIndex = 1;
			this.label1.Text = "Programs available";
			// 
			// label2
			// 
			this.label2.BackColor = System.Drawing.SystemColors.Window;
			this.label2.Location = new System.Drawing.Point(16, 88);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(136, 128);
			this.label2.TabIndex = 2;
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
			// label7
			// 
			this.label7.BackColor = System.Drawing.SystemColors.Window;
			this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, (System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline), System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label7.Location = new System.Drawing.Point(160, 64);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(48, 16);
			this.label7.TabIndex = 15;
			this.label7.Text = "Phrase";
			// 
			// label6
			// 
			this.label6.BackColor = System.Drawing.SystemColors.Window;
			this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, (System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline), System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label6.Location = new System.Drawing.Point(16, 64);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(56, 16);
			this.label6.TabIndex = 14;
			this.label6.Text = "Program";
			// 
			// label4
			// 
			this.label4.BackColor = System.Drawing.SystemColors.Window;
			this.label4.Location = new System.Drawing.Point(160, 88);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(136, 128);
			this.label4.TabIndex = 13;
			// 
			// frmFavorites
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(456, 262);
			this.Controls.AddRange(new System.Windows.Forms.Control[] {
																		  this.label7,
																		  this.label6,
																		  this.label4,
																		  this.label11,
																		  this.label10,
																		  this.label9,
																		  this.label3,
																		  this.button1,
																		  this.label2,
																		  this.label1});
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "frmFavorites";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Favorites programs";
			this.TopMost = true;
			this.Load += new System.EventHandler(this.frmCommands_Load);
			this.ResumeLayout(false);

		}
		#endregion

		private void button1_Click(object sender, System.EventArgs e)
		{
			Close();
		}

		private void frmCommands_Load(object sender, System.EventArgs e)
		{
			// open file
			XmlTextReader XmlReader = new System.Xml.XmlTextReader((string)this.Tag);
			string str1="";
			bool startRead=false;

			while (XmlReader.Read())
			{
				//search only the attribute that we need
				str1=XmlReader["NAME"];

				// if we allready was reading and the element is finished stop reading
				// we reached the end of the element (or file currupted)
				if (startRead==true && XmlReader.Name=="RULE")
					startRead=false;
				// if we found the attribute start reading
				if (str1=="RunProgram")
					startRead=true;

				//read element string ...
				if (startRead==true && XmlReader.Name=="P")
				{
					str1=XmlReader["DISP"];
					label2.Text+=str1+"\n";

					str1=XmlReader.ReadString();
					label4.Text+=str1+"\n";
				}
			}

			//close file
			XmlReader.Close();
		}
	}
}
