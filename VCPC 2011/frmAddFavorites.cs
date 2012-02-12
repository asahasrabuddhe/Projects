using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Xml;
using System.IO;

namespace SR
{
	/// <summary>
	/// add/delete favorite programs from the file
	/// </summary>
	public class frmAddFavorites : System.Windows.Forms.Form
	{
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.ListBox listBox1;
		private System.Windows.Forms.ListBox listBox2;
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.TextBox textBox1;
		private System.Windows.Forms.TextBox textBox2;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.Button button4;
		private System.Windows.Forms.Button button5;
		private System.Windows.Forms.OpenFileDialog openFileDialog1;
		private System.Windows.Forms.Label label2;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		public frmAddFavorites()
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
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmAddFavorites));
			this.label1 = new System.Windows.Forms.Label();
			this.button1 = new System.Windows.Forms.Button();
			this.label7 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.listBox1 = new System.Windows.Forms.ListBox();
			this.listBox2 = new System.Windows.Forms.ListBox();
			this.button2 = new System.Windows.Forms.Button();
			this.textBox1 = new System.Windows.Forms.TextBox();
			this.textBox2 = new System.Windows.Forms.TextBox();
			this.button3 = new System.Windows.Forms.Button();
			this.button4 = new System.Windows.Forms.Button();
			this.button5 = new System.Windows.Forms.Button();
			this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
			this.label2 = new System.Windows.Forms.Label();
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
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(376, 232);
			this.button1.Name = "button1";
			this.button1.TabIndex = 3;
			this.button1.Text = "Close";
			this.button1.Click += new System.EventHandler(this.button1_Click);
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
			// listBox1
			// 
			this.listBox1.Location = new System.Drawing.Point(16, 88);
			this.listBox1.Name = "listBox1";
			this.listBox1.Size = new System.Drawing.Size(136, 108);
			this.listBox1.TabIndex = 16;
			this.listBox1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.listBox1_MouseDown);
			this.listBox1.MouseMove += new System.Windows.Forms.MouseEventHandler(this.listBox1_MouseMove);
			// 
			// listBox2
			// 
			this.listBox2.Location = new System.Drawing.Point(160, 88);
			this.listBox2.Name = "listBox2";
			this.listBox2.Size = new System.Drawing.Size(136, 108);
			this.listBox2.TabIndex = 17;
			this.listBox2.MouseDown += new System.Windows.Forms.MouseEventHandler(this.listBox2_MouseDown);
			this.listBox2.MouseMove += new System.Windows.Forms.MouseEventHandler(this.listBox2_MouseMove);
			// 
			// button2
			// 
			this.button2.Location = new System.Drawing.Point(376, 72);
			this.button2.Name = "button2";
			this.button2.TabIndex = 18;
			this.button2.Text = "Delete";
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// textBox1
			// 
			this.textBox1.Location = new System.Drawing.Point(16, 232);
			this.textBox1.Name = "textBox1";
			this.textBox1.Size = new System.Drawing.Size(136, 20);
			this.textBox1.TabIndex = 19;
			this.textBox1.Text = "";
			// 
			// textBox2
			// 
			this.textBox2.Location = new System.Drawing.Point(160, 232);
			this.textBox2.Name = "textBox2";
			this.textBox2.Size = new System.Drawing.Size(136, 20);
			this.textBox2.TabIndex = 20;
			this.textBox2.Text = "";
			// 
			// button3
			// 
			this.button3.Location = new System.Drawing.Point(376, 144);
			this.button3.Name = "button3";
			this.button3.TabIndex = 23;
			this.button3.Text = "Add";
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// button4
			// 
			this.button4.Location = new System.Drawing.Point(376, 168);
			this.button4.Name = "button4";
			this.button4.TabIndex = 24;
			this.button4.Text = "Browse";
			this.button4.Click += new System.EventHandler(this.button4_Click);
			// 
			// button5
			// 
			this.button5.Location = new System.Drawing.Point(376, 192);
			this.button5.Name = "button5";
			this.button5.TabIndex = 25;
			this.button5.Text = "Save";
			this.button5.Click += new System.EventHandler(this.button5_Click);
			// 
			// openFileDialog1
			// 
			this.openFileDialog1.Filter = "Applications *.exe|*.exe|All files *.*|*.*";
			// 
			// label2
			// 
			this.label2.BackColor = System.Drawing.SystemColors.Window;
			this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, (System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline), System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));
			this.label2.Location = new System.Drawing.Point(16, 208);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(80, 16);
			this.label2.TabIndex = 26;
			this.label2.Text = "New program";
			// 
			// frmAddFavorites
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(456, 262);
			this.Controls.AddRange(new System.Windows.Forms.Control[] {
																		  this.label2,
																		  this.button5,
																		  this.button4,
																		  this.button3,
																		  this.textBox2,
																		  this.textBox1,
																		  this.button2,
																		  this.listBox2,
																		  this.listBox1,
																		  this.label7,
																		  this.label6,
																		  this.button1,
																		  this.label1});
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "frmAddFavorites";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Add Favorites";
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
					listBox1.Items.Add(str1);

					str1=XmlReader.ReadString();
					listBox2.Items.Add(str1);
				}
			}

			//close file
			XmlReader.Close();
		}

		/// <summary>
		/// Delete item from (both) list box
		/// </summary>
		private void button2_Click(object sender, System.EventArgs e)
		{
			int i=listBox1.SelectedIndex;

			if (listBox1.Items.Count>0 && i!=-1)
			{
				listBox1.Items.RemoveAt(i);
				listBox2.Items.RemoveAt(i);
			}
		}

		private void listBox1_MouseMove(object sender, System.Windows.Forms.MouseEventArgs e)
		{
			if (e.Button==MouseButtons.Left)
				listBox2.SelectedIndex=listBox1.SelectedIndex;
		}

		private void listBox2_MouseMove(object sender, System.Windows.Forms.MouseEventArgs e)
		{
			if (e.Button==MouseButtons.Left)
				listBox1.SelectedIndex=listBox2.SelectedIndex;
		}

		private void listBox1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e)
		{
			listBox2.SelectedIndex=listBox1.SelectedIndex;
		}

		private void listBox2_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e)
		{
			listBox1.SelectedIndex=listBox2.SelectedIndex;
		}

		/// <summary>
		/// browse pressed
		/// </summary>
		private void button4_Click(object sender, System.EventArgs e)
		{
			if (openFileDialog1.ShowDialog()==DialogResult.OK)
			{
                FileInfo fileInfo1=new FileInfo(openFileDialog1.FileName);

				textBox1.Text=fileInfo1.Name.Remove(fileInfo1.Name.IndexOf(fileInfo1.Extension),fileInfo1.Extension.Length);
				textBox2.Text="";
			}
		}

		/// <summary>
		/// add text box (both) to the list
		/// </summary>
		private void button3_Click(object sender, System.EventArgs e)
		{
			//make sure we have program name and phrase for it
			if (textBox1.Text=="" || textBox2.Text=="")
				MessageBox.Show("You must enter program name AND phrase","ERROR - adding phrase");
			else
			{
				//check if phrase already exists (prgram name can appear more that 1 ...)
				if (listBox2.Items.IndexOf(textBox2.Text)==-1)
				{
					listBox1.Items.Add(textBox1.Text);
					listBox2.Items.Add(textBox2.Text);

					textBox1.Text="";
					textBox2.Text="";
				}
				else
				{
					MessageBox.Show("That phrase already exists","ERROR - duplicate phrase");
				}
			}
		}

		/// <summary>
		/// save list to the file
		/// </summary>
		private void button5_Click(object sender, System.EventArgs e)
		{
			XmlTextWriter xmlWriter=new XmlTextWriter((string)this.Tag,null);

			// xml file format
			xmlWriter.Formatting=Formatting.Indented;

			// Comments
            xmlWriter.WriteComment("This file is changing dynamically by the application");

			// <GRAMMAR>
			xmlWriter.WriteStartElement("GRAMMAR");
			xmlWriter.WriteAttributeString("","LANGID","","409");

			// <DEFINE>
			xmlWriter.WriteStartElement("DEFINE");

			// <ID NAME="RID_CloseFavorites" VAL="0">
			xmlWriter.WriteStartElement("ID");
			xmlWriter.WriteAttributeString("","NAME","","RID_CloseFavorites");
			xmlWriter.WriteAttributeString("","VAL","","0");
			// </ID>
			xmlWriter.WriteEndElement();

			// <ID NAME="RID_RunProgram" VAL="1"></ID>
			xmlWriter.WriteStartElement("ID");
			xmlWriter.WriteAttributeString("","NAME","","RID_RunProgram");
			xmlWriter.WriteAttributeString("","VAL","","1");
			// </ID>
			xmlWriter.WriteEndElement();

			// </DEFINE>
			xmlWriter.WriteEndElement();


			// <RULE>
			xmlWriter.WriteStartElement("RULE");
			xmlWriter.WriteAttributeString("","NAME","","CloseFavorites");
			xmlWriter.WriteAttributeString("","ID","","RID_CloseFavorites");
			xmlWriter.WriteAttributeString("","TOPLEVEL","","ACTIVE");
			// <L>
			xmlWriter.WriteStartElement("L");
			// <P>
			xmlWriter.WriteStartElement("P");
			xmlWriter.WriteAttributeString("","WEIGHT","",".05");
            xmlWriter.WriteString("close");
			// </P>
			xmlWriter.WriteEndElement();

			// <P>
			xmlWriter.WriteStartElement("P");
			xmlWriter.WriteAttributeString("","WEIGHT","",".05");
			xmlWriter.WriteString("hide");
			// </P>
			xmlWriter.WriteEndElement();

			// </L>
			xmlWriter.WriteEndElement();
			// </RULE>
			xmlWriter.WriteEndElement();

			// <RULE>
			xmlWriter.WriteStartElement("RULE");
			xmlWriter.WriteAttributeString("","NAME","","RunProgram");
			xmlWriter.WriteAttributeString("","ID","","RID_RunProgram");
			xmlWriter.WriteAttributeString("","TOPLEVEL","","ACTIVE");
			// <L>
			xmlWriter.WriteStartElement("L");

			for (int i=0;i<listBox1.Items.Count;i++)
			{
				// <P>
				xmlWriter.WriteStartElement("P");
				xmlWriter.WriteAttributeString("","DISP","",listBox1.Items[i].ToString());
				xmlWriter.WriteString(listBox2.Items[i].ToString());
				// </P>
				xmlWriter.WriteEndElement();
			}

			// </L>
			xmlWriter.WriteEndElement();
			// </RULE>
			xmlWriter.WriteEndElement();


			// </GRAMMAR>
			xmlWriter.WriteEndElement();

			// close file
			xmlWriter.Close();

			MessageBox.Show("Saved successfully","Save favorites");
		}
	}
}
