using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;
using System.Runtime.InteropServices;
using SpeechLib;
using System.Text;

namespace SR
{
	/// <summary>
	/// This is the main form
	/// It's responsible for creating all necessary objects for speech recognition
	/// </summary>
	public class frmMain : System.Windows.Forms.Form
	{
		/// <summary>
		/// API functions
		/// </summary>
		[DllImport("user32.Dll")]
		public static extern int keybd_event(byte ch,byte scan,int flag,int info);

		[DllImport("user32.dll")]
		static extern IntPtr GetForegroundWindow();

		[DllImport("user32.Dll")]
		public static extern IntPtr GetMenu(IntPtr hwnd);
		
		[DllImport("user32.dll")]
		static extern IntPtr GetSubMenu(IntPtr hMnu, int nPos);

		[DllImport("user32.dll")]
		static extern int GetMenuItemCount(IntPtr hMnu);

		[DllImport("user32.dll")]
		static extern int GetMenuString(IntPtr hMnu, int uIDItem, StringBuilder text, int nMaxCount, int uFlag);

		[DllImport("user32.dll")]
		static extern int GetCursorPos(out Point pnt);

		[DllImport("user32.dll")]
		static extern int GetMenuState(IntPtr hMnu, int uIDItem, int uFlags);

		///<summary>
		///Global variables
		///</summary>

		//struct for phrase list
		//used by the function SAPIGrammarFromArrayList(ArrayList phraseList)
		private struct command
		{
			public string ruleName;
			public string phrase;
		}

		//SAPI
		private SpeechLib.SpSharedRecoContext		objRecoContext;
		private SpeechLib.ISpeechRecoGrammar		grammar;
		private SpeechLib.ISpeechGrammarRule		rule=null;
		private SpeechLib.ISpeechGrammarRuleState   state;

		//character
		private AgentObjects.IAgentCtlCharacterEx agent1;
		Point pntMouse=new Point(0,0);

		//forms
		//they needed to be global couse they could be created and closed in different places
		frmAbout frmAbout1=null;
		frmCommands frmCommands1=null;
		frmFavorites frmFavorites1=null;
		frmAccuracyChange frmAccuracyChange1=null;
		frmProfileChange frmProfileChange1=null;

		//misc
		string appPath="";
		byte keyHolding=0;
		int accuracyLimit=0;
		float accuracyMax=0.1F;						//to avoid divide by zero
		string firstRecognition="";
		string previousGrammar="XMLActivate.xml";	//for safty load something...

		/// <summary>
		/// Form components
		/// </summary>
		private AxAgentObjects.AxAgent axAgent1;
		private System.Windows.Forms.ProgressBar MicVolume;
		private System.Windows.Forms.PictureBox pictureBox1;
		private System.Windows.Forms.ContextMenu contextMenu1;
		private System.Windows.Forms.MenuItem menuItem1;
		private System.Windows.Forms.MenuItem menuItem2;
		private System.ComponentModel.IContainer components;
		private System.Windows.Forms.Timer timer1;
		private System.Windows.Forms.MenuItem menuItem3;
		private System.Windows.Forms.MenuItem menuItem5;
		private System.Windows.Forms.MenuItem menuItem6;
		private System.Windows.Forms.Timer timer2;
		private System.Windows.Forms.MenuItem menuItem7;
		private System.Windows.Forms.MenuItem menuItem8;
		private System.Windows.Forms.MenuItem menuItem9;
		private System.Windows.Forms.MenuItem menuItem10;
		private System.Windows.Forms.MenuItem menuItem12;
		private System.Windows.Forms.MenuItem menuItem13;
		private System.Windows.Forms.MenuItem menuItem4;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.MenuItem menuItem11;
		private System.Windows.Forms.MenuItem menuItem14;
		private System.Windows.Forms.OpenFileDialog openFileDialog1;

		public frmMain()
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
				if (components != null) 
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
			this.components = new System.ComponentModel.Container();
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmMain));
			this.axAgent1 = new AxAgentObjects.AxAgent();
			this.MicVolume = new System.Windows.Forms.ProgressBar();
			this.contextMenu1 = new System.Windows.Forms.ContextMenu();
			this.menuItem3 = new System.Windows.Forms.MenuItem();
			this.menuItem5 = new System.Windows.Forms.MenuItem();
			this.menuItem4 = new System.Windows.Forms.MenuItem();
			this.menuItem6 = new System.Windows.Forms.MenuItem();
			this.menuItem7 = new System.Windows.Forms.MenuItem();
			this.menuItem12 = new System.Windows.Forms.MenuItem();
			this.menuItem10 = new System.Windows.Forms.MenuItem();
			this.menuItem9 = new System.Windows.Forms.MenuItem();
			this.menuItem8 = new System.Windows.Forms.MenuItem();
			this.menuItem13 = new System.Windows.Forms.MenuItem();
			this.menuItem1 = new System.Windows.Forms.MenuItem();
			this.menuItem2 = new System.Windows.Forms.MenuItem();
			this.pictureBox1 = new System.Windows.Forms.PictureBox();
			this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
			this.timer1 = new System.Windows.Forms.Timer(this.components);
			this.timer2 = new System.Windows.Forms.Timer(this.components);
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.menuItem11 = new System.Windows.Forms.MenuItem();
			this.menuItem14 = new System.Windows.Forms.MenuItem();
			((System.ComponentModel.ISupportInitialize)(this.axAgent1)).BeginInit();
			this.SuspendLayout();
			// 
			// axAgent1
			// 
			this.axAgent1.Enabled = true;
			this.axAgent1.Location = new System.Drawing.Point(48, 40);
			this.axAgent1.Name = "axAgent1";
			this.axAgent1.OcxState = ((System.Windows.Forms.AxHost.State)(resources.GetObject("axAgent1.OcxState")));
			this.axAgent1.Size = new System.Drawing.Size(32, 32);
			this.axAgent1.TabIndex = 0;
			this.axAgent1.TabStop = false;
			this.axAgent1.Visible = false;
			this.axAgent1.ClickEvent += new AxAgentObjects._AgentEvents_ClickEventHandler(this.axAgent1_ClickEvent);
			this.axAgent1.DragComplete += new AxAgentObjects._AgentEvents_DragCompleteEventHandler(this.axAgent1_DragComplete);
			this.axAgent1.DragStart += new AxAgentObjects._AgentEvents_DragStartEventHandler(this.axAgent1_DragStart);
			// 
			// MicVolume
			// 
			this.MicVolume.ContextMenu = this.contextMenu1;
			this.MicVolume.Location = new System.Drawing.Point(8, 136);
			this.MicVolume.Name = "MicVolume";
			this.MicVolume.Size = new System.Drawing.Size(112, 16);
			this.MicVolume.TabIndex = 3;
			// 
			// contextMenu1
			// 
			this.contextMenu1.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] {
																						 this.menuItem3,
																						 this.menuItem11,
																						 this.menuItem14,
																						 this.menuItem5,
																						 this.menuItem4,
																						 this.menuItem6,
																						 this.menuItem7,
																						 this.menuItem12,
																						 this.menuItem10,
																						 this.menuItem9,
																						 this.menuItem8,
																						 this.menuItem13,
																						 this.menuItem1,
																						 this.menuItem2});
			// 
			// menuItem3
			// 
			this.menuItem3.Index = 0;
			this.menuItem3.Text = "Stop listen";
			this.menuItem3.Click += new System.EventHandler(this.menuItem3_Click);
			// 
			// menuItem5
			// 
			this.menuItem5.Index = 3;
			this.menuItem5.Text = "-";
			// 
			// menuItem4
			// 
			this.menuItem4.Index = 4;
			this.menuItem4.Text = "Add favorites";
			this.menuItem4.Click += new System.EventHandler(this.menuItem4_Click);
			// 
			// menuItem6
			// 
			this.menuItem6.Index = 5;
			this.menuItem6.Text = "Change character";
			this.menuItem6.Click += new System.EventHandler(this.menuItem6_Click);
			// 
			// menuItem7
			// 
			this.menuItem7.Index = 6;
			this.menuItem7.Text = "Change accuracy limit";
			this.menuItem7.Click += new System.EventHandler(this.menuItem7_Click);
			// 
			// menuItem12
			// 
			this.menuItem12.Index = 7;
			this.menuItem12.Text = "-";
			// 
			// menuItem10
			// 
			this.menuItem10.Index = 8;
			this.menuItem10.Text = "Change user profile";
			this.menuItem10.Click += new System.EventHandler(this.menuItem10_Click);
			// 
			// menuItem9
			// 
			this.menuItem9.Index = 9;
			this.menuItem9.Text = "Mic training wizard...";
			this.menuItem9.Click += new System.EventHandler(this.menuItem9_Click);
			// 
			// menuItem8
			// 
			this.menuItem8.Index = 10;
			this.menuItem8.Text = "User training wizard...";
			this.menuItem8.Click += new System.EventHandler(this.menuItem8_Click);
			// 
			// menuItem13
			// 
			this.menuItem13.Index = 11;
			this.menuItem13.Text = "Profile proporties wizard...";
			this.menuItem13.Click += new System.EventHandler(this.menuItem13_Click);
			// 
			// menuItem1
			// 
			this.menuItem1.Index = 12;
			this.menuItem1.Text = "-";
			// 
			// menuItem2
			// 
			this.menuItem2.Index = 13;
			this.menuItem2.Text = "Exit";
			this.menuItem2.Click += new System.EventHandler(this.menuItem2_Click);
			// 
			// pictureBox1
			// 
			this.pictureBox1.BackColor = System.Drawing.Color.Navy;
			this.pictureBox1.ContextMenu = this.contextMenu1;
			this.pictureBox1.Location = new System.Drawing.Point(0, 128);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new System.Drawing.Size(128, 64);
			this.pictureBox1.TabIndex = 4;
			this.pictureBox1.TabStop = false;
			// 
			// openFileDialog1
			// 
			this.openFileDialog1.Filter = "Agent *.acs|*.acs";
			// 
			// timer1
			// 
			this.timer1.Interval = 10;
			this.timer1.Tick += new System.EventHandler(this.timer1_Tick_1);
			// 
			// timer2
			// 
			this.timer2.Interval = 500;
			this.timer2.Tick += new System.EventHandler(this.timer2_Tick);
			// 
			// label1
			// 
			this.label1.BackColor = System.Drawing.Color.Navy;
			this.label1.ContextMenu = this.contextMenu1;
			this.label1.ForeColor = System.Drawing.SystemColors.HighlightText;
			this.label1.Location = new System.Drawing.Point(8, 158);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(112, 16);
			this.label1.TabIndex = 7;
			this.label1.Text = "label1";
			// 
			// label2
			// 
			this.label2.BackColor = System.Drawing.Color.Navy;
			this.label2.ContextMenu = this.contextMenu1;
			this.label2.ForeColor = System.Drawing.SystemColors.HighlightText;
			this.label2.Location = new System.Drawing.Point(8, 173);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(112, 16);
			this.label2.TabIndex = 8;
			this.label2.Text = "Accuracy 0%";
			// 
			// menuItem11
			// 
			this.menuItem11.Index = 1;
			this.menuItem11.Text = "-";
			// 
			// menuItem14
			// 
			this.menuItem14.Checked = true;
			this.menuItem14.Index = 2;
			this.menuItem14.Text = "Use agent";
			this.menuItem14.Click += new System.EventHandler(this.menuItem14_Click);
			// 
			// frmMain
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.ClientSize = new System.Drawing.Size(128, 192);
			this.Controls.AddRange(new System.Windows.Forms.Control[] {
																		  this.label2,
																		  this.label1,
																		  this.MicVolume,
																		  this.axAgent1,
																		  this.pictureBox1});
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "frmMain";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Speech Recognition";
			this.TopMost = true;
			this.TransparencyKey = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.Load += new System.EventHandler(this.frmMain_Load);
			((System.ComponentModel.ISupportInitialize)(this.axAgent1)).EndInit();
			this.ResumeLayout(false);

		}
		#endregion

		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main() 
		{
			Application.Run(new frmMain());
		}

		/// <summary>
		/// Create the main object (SpSharedRecoContext), init the gramar
		/// And activating the events ...
		/// 1.Recognition	=> if any phrase recognized
		/// 2.AudioLevel	=> to watch the mic volume
		/// </summary>
		private void initSAPI()
		{
			try
			{
				objRecoContext = new SpeechLib.SpSharedRecoContext();
				objRecoContext.AudioLevel+= new _ISpeechRecoContextEvents_AudioLevelEventHandler(RecoContext_VUMeter);
				objRecoContext.Recognition+= new _ISpeechRecoContextEvents_RecognitionEventHandler(RecoContext_Recognition);
				objRecoContext.EventInterests=SpeechLib.SpeechRecoEvents.SRERecognition | SpeechLib.SpeechRecoEvents.SREAudioLevel;

				//create grammar interface with ID = 0
				grammar=objRecoContext.CreateGrammar(0);
			}
			catch(Exception ex)
			{
				MessageBox.Show("Exception \n"+ex.ToString(),"Error - initSAPI");
			}
		}

		/// <summary>
		/// Loading grammar from file
		/// And resetting all previous rules (delete all previous rules !)
		/// </summary>
		/// <param name="FileName">FilName add to the global variable appPath</param>
		private void SAPIGrammarFromFile(string FileName)
		{
			try
			{
				grammar.CmdLoadFromFile(appPath+FileName,SpeechLib.SpeechLoadOption.SLODynamic);
				grammar.CmdSetRuleIdState(0,SpeechRuleState.SGDSActive);

				//save as previous grammar for commands list
				if (FileName != "XMLCommands.xml")
					previousGrammar=FileName;
			}
			catch
			{
                MessageBox.Show("Error loading file "+FileName+"\n","Error - SAPIGrammarFromFile");
			}
		}

		/// <summary>
		/// Adding new ruleName and phrase programmatically (not from grammar file)
		/// To an existing grammar (Adding to previous rules ! without deleting them)
		/// Can be add rules to exist grammar from file or from first added rules
		/// </summary>
		/// <param name="phraseList">
		/// ArrayList (phraseList) contains struct command objects that contains ...
		/// 1. ruleName		(rule Name must be individual)
		/// 2. phrase		(word to be recognized)
		/// </param>
		private void SAPIGrammarFromArrayList(ArrayList phraseList)
		{
			object propertyValue="";
			command command1;

			int i;
			for (i=0;i<phraseList.Count;i++)
			{
				command1=(command)phraseList[i];

				//add new rule with ID = i+100
				rule=grammar.Rules.Add(command1.ruleName, SpeechRuleAttributes.SRATopLevel, i+100);

				//add new word to the rule
				state=rule.InitialState;
				propertyValue="";
				state.AddWordTransition(null,command1.phrase," ", SpeechGrammarWordType.SGLexical, "", 0, ref propertyValue, 1F);

				//commit rules
				grammar.Rules.Commit();

				//make rule active (needed for each rule)
				grammar.CmdSetRuleState(command1.ruleName, SpeechRuleState.SGDSActive);
			}
		}

		/// <summary>
		/// main objRecoContext event
		/// launched when engine recognized a phrase
		/// </summary>
		/// <param name="e">contained information on the phrase that been recognized</param>
		public void RecoContext_Recognition(int StreamNumber, object StreamPosition, SpeechRecognitionType RecognitionType,	ISpeechRecoResult e)
		{
			//calculate accuracy
			float accuracy=(float)e.PhraseInfo.Elements.Item(0).EngineConfidence;

			//change accuracyMax dynamicly
			if (accuracyMax<accuracy)
				accuracyMax=accuracy;

			if (accuracy<0)
				accuracy=0;

			accuracy=(int)((float)accuracy/accuracyMax*100);
			label2.Text="Accuracy "+accuracy.ToString()+ "%";

			//get phrase
			string phrase=e.PhraseInfo.GetText(0,-1,true);
			//make sure it's in lower case (for safer use only)
			phrase=phrase.ToLower();

			//if recognized any ...
			if (phrase!="" && accuracy>=accuracyLimit)
			{
				//Only if agent enabled
				if (menuItem14.Checked==true)
				{
					agent1.StopAll("");
					agent1.Speak(phrase,"");
				}

				switch (e.PhraseInfo.Rule.Name)		//rule name (not the phrase !)
				{
					case "Activate":
					{
						//Only if agent enabled
						if (menuItem14.Checked==true)
						{
							//show character
							agent1.Show(false);
						}

						//load grammar
						SAPIGrammarFromFile("XMLDeactivate.xml");

						//notify user
						label1.Text="Activate";

						//Only if agent enabled
						if (menuItem14.Checked==true)
						{
							//animate character
							agent1.Play("StartListening");
							agent1.Speak("I'm listening","");
						}
						break;
					}
					case "Deactivate":
					{
						//load grammar
						SAPIGrammarFromFile("XMLActivate.xml");

						//notify user
						label1.Text="Deactivate";

						//Only if agent enabled
						if (menuItem14.Checked==true)
						{
							//animate character
							agent1.Play("Wave");
							agent1.Hide(false);
						}
						break;
					}
					case "Start":
					{
						keybd_event((byte)Keys.LWin,0,0,0);	//key down
						keybd_event((byte)Keys.LWin,0,2,0);	//key up

						//load grammar
						SAPIGrammarFromFile("XMLStart.xml");

						//notify user
						label1.Text="Start";
						break;
					}
					case "Right":
					{
						keybd_event((byte)Keys.Right,0,0,0);	//key down
						keybd_event((byte)Keys.Right,0,2,0);	//key up
						break;
					}
					case "Left":
					{
						keybd_event((byte)Keys.Left,0,0,0);	//key down
						keybd_event((byte)Keys.Left,0,2,0);	//key up
						break;
					}
					case "Up":
					{
						keybd_event((byte)Keys.Up,0,0,0);		//key down
						keybd_event((byte)Keys.Up,0,2,0);		//key up
						break;
					}
					case "Down":
					{
						keybd_event((byte)Keys.Down,0,0,0);	//key down
						keybd_event((byte)Keys.Down,0,2,0);	//key up
						break;
					}
					case "Enter":
					{
						keybd_event((byte)Keys.Enter,0,0,0);	//key down
						keybd_event((byte)Keys.Enter,0,2,0);	//key up
						break;
					}
					case "Escape":
					{
						keybd_event((byte)Keys.Escape,0,0,0);	//key down
						keybd_event((byte)Keys.Escape,0,2,0);	//key up
						keybd_event((byte)Keys.LMenu,0,2,0);	//key up

						//load grammar (used to reset grammar in case it contains menu stuff ...)
						SAPIGrammarFromFile("XMLDeactivate.xml");

						//notify user
						label1.Text="Activate";
						break;
					}
					case "PureEscape":
					{
						keybd_event((byte)Keys.Escape,0,0,0);	//key down
						keybd_event((byte)Keys.Escape,0,2,0);	//key up
						break;
					}
					case "Alt":
					{
						keybd_event((byte)Keys.LMenu,0,0,0);	//key down
						keybd_event((byte)Keys.LMenu,0,2,0);	//key up

						//check if there is any menu and hook it
						IntPtr hWnd=GetForegroundWindow();
						IntPtr hMnu=GetMenu(hWnd);
						int mnuCnt=GetMenuItemCount(hMnu);

						if (mnuCnt!=0)
						{
							//Only if agent enabled
							if (menuItem14.Checked==true)
							{
								//animate character
								agent1.Play("DoMagic1");
								agent1.Think("Hooking menu ...");
							}

							//add menu to grammar
							hookMenu(hMnu);

							//Only if agent enabled
							if (menuItem14.Checked==true)
							{
								//animate character
								agent1.Play("Idle1_1");
							}
						}
						else
						{
							//load grammar
							SAPIGrammarFromFile("XMLDeactivate.xml");

							//notify user
							label1.Text="Activate";
						}
						break;
					}
					case "Tab":
					{
						keybd_event((byte)Keys.Tab,0,0,0);	//key down
						keybd_event((byte)Keys.Tab,0,2,0);	//key up
						break;
					}
					case "ShiftTab":
					{
						keybd_event((byte)Keys.LShiftKey,0,0,0);	//key down
						keybd_event((byte)Keys.Tab,0,0,0);		//key down
						keybd_event((byte)Keys.Tab,0,2,0);		//key up
						keybd_event((byte)Keys.LShiftKey,0,2,0);	//key up
						break;
					}
					case "CloseProgram":
					{
						Close();
						break;
					}
					case "ShowAbout":
					{
						if (frmAbout1==null)
						{
							//show frmAbout
							frmAbout1=new frmAbout();
							frmAbout1.Closed+=new EventHandler(frmAbout1_Closed);
							//send user profile
							frmAbout1.Tag=(string)objRecoContext.Recognizer.Profile.GetDescription(0);
							frmAbout1.Show();
						}

						//load grammar
						SAPIGrammarFromFile("XMLAbout.xml");

						//notify user
						label1.Text="About Speech Recognition";
						break;
					}
					case "CloseAbout":
					{
						//close frmAbout
						if (frmAbout1!=null)
						{
							frmAbout1.Close();
							frmAbout1=null;
						}
						break;
					}
					case "ShowCommands":
					{
						if (frmCommands1==null)
						{
							//show frmAbout
							frmCommands1=new frmCommands();
							frmCommands1.Closed+=new EventHandler(frmCommands1_Closed);
							//send grammar
							frmCommands1.Tag=label1.Text;
							frmCommands1.Show();
						}

						//load grammar
						SAPIGrammarFromFile("XMLCommands.xml");
						break;
					}
					case "CloseCommands":
					{
						//close frmCommands
						if (frmCommands1!=null)
						{
							frmCommands1.Close();
							frmCommands1=null;
						}
						break;
					}
					case "ShowFavorites":
					{
						if (frmFavorites1==null)
						{
							//show frmFavorites
							frmFavorites1=new frmFavorites();
							frmFavorites1.Closed+=new EventHandler(frmFavorites1_Closed);
							//send file name
							frmFavorites1.Tag=appPath+"XMLFavorites.xml";
							frmFavorites1.Show();
						}

						//load grammar
						SAPIGrammarFromFile("XMLFavorites.xml");

						//notify user
						label1.Text="Favorites";
						break;
					}
					case "CloseFavorites":
					{
						//show frmAbout
						if (frmFavorites1!=null)
						{
							frmFavorites1.Close();
							frmFavorites1=null;
						}
						break;
					}
					case "CloseForm":
					{
						IntPtr hWnd=GetForegroundWindow();

						//make sure we are not closing our program ...
						if (hWnd!=this.Handle)
						{
							keybd_event((byte)Keys.LMenu,0,0,0);	//key down
							keybd_event((byte)Keys.F4,0,0,0);		//key down
							keybd_event((byte)Keys.LMenu,0,2,0);	//key up
							keybd_event((byte)Keys.F4,0,2,0);		//key up
						}
						break;
					}
					case "Programs":
					case "Documents":
					case "Settings":
					case "Search":
					case "Help":
					case "Run":
					{
						keybd_event((byte)(e.PhraseInfo.Rule.Name[0]),0,0,0);	//key down
						keybd_event((byte)(e.PhraseInfo.Rule.Name[0]),0,2,0);	//key up

						//load grammar
						SAPIGrammarFromFile("XMLDeactivate.xml");

						//notify user
						label1.Text="Activate";
						break;
					}
					case "RunProgram":
					{
						//show frmAbout
						if (frmFavorites1!=null)
						{
							frmFavorites1.Close();
							frmFavorites1=null;
						}

						try
						{
							System.Diagnostics.Process.Start(phrase);
						}
						catch
						{
							//Only if agent enabled
							if (menuItem14.Checked==true)
							{
								agent1.Speak("Could not run : "+phrase,"");
							}
						}

						//load grammar
						SAPIGrammarFromFile("XMLDeactivate.xml");

						//notify user
						label1.Text="Activate";
						break;
					}
					case "SwitchProgram":
					{
						keybd_event((byte)Keys.LMenu,0,0,0);	//key down
						keybd_event((byte)Keys.Tab,0,0,0);	//key down
						keybd_event((byte)Keys.Tab,0,2,0);	//key up

						//load grammar
						SAPIGrammarFromFile("XMLSwitchProgram.xml");

						//notify user
						label1.Text="Switch Program";
						break;
					}
					case "SwitchEnter":
					{
						keybd_event((byte)Keys.LMenu,0,2,0);	//key up
						
						//load grammar
						SAPIGrammarFromFile("XMLDeactivate.xml");

						//notify user
						label1.Text="Activate";
						break;
					}

					case "HoldKey":
					{
						//load grammar
						SAPIGrammarFromFile("XMLStickyKeys.xml");

						//notify user
						label1.Text="Press key";
						break;
					}

					case "ReleaseKey":
					{
						timer2.Enabled=false;

						//load grammar
						SAPIGrammarFromFile("XMLDeactivate.xml");

						//notify user
						label1.Text="Activate";
						break;
					}

					case "HoldRight":
					{
						keyHolding=(byte)Keys.Right;
						timer2.Enabled=true;
						break;
					}
					case "HoldLeft":
					{
						keyHolding=(byte)Keys.Left;
						timer2.Enabled=true;
						break;
					}
					case "HoldUp":
					{
						keyHolding=(byte)Keys.Up;
						timer2.Enabled=true;
						break;
					}
					case "HoldDown":
					{
						keyHolding=(byte)Keys.Down;
						timer2.Enabled=true;
						break;
					}
					case "PageUp":
					{
						keybd_event((byte)Keys.PageUp,0,0,0);	//key down
						keybd_event((byte)Keys.PageUp,0,2,0);	//key up
						break;
					}
					case "Yes":
					{
						keybd_event((byte)Keys.Y,0,0,0);	//key down
						keybd_event((byte)Keys.Y,0,2,0);	//key up
						break;
					}
					case "No":
					{
						keybd_event((byte)Keys.N,0,0,0);	//key down
						keybd_event((byte)Keys.N,0,2,0);	//key up
						break;
					}
					case "BackSpace":
					{
						keybd_event((byte)Keys.Back,0,0,0);	//key down
						keybd_event((byte)Keys.Back,0,2,0);	//key up
						break;
					}
					case "ShutDown":
					{
						Shell32.ShellClass a=new Shell32.ShellClass();
						a.ShutdownWindows();
	
						//load grammar
						SAPIGrammarFromFile("XMLShutDown.xml");

						//notify user
						label1.Text="Shut Down";
						break;
					}
					case "ActivateWithoutAnimation":
					{
						//load grammar
						SAPIGrammarFromFile("XMLDeactivate.xml");

						//notify user
						label1.Text="Activate";
						break;
					}
					case "EnterNumericState":
					{
						//load grammar
						SAPIGrammarFromFile("XMLNumericState.xml");

						//notify user
						label1.Text="Numeric State...";
						break;
					}
					case "Zero":
					case "One":
					case "Two":
					case "Three":
					case "Four":
					case "Five":
					case "Six":
					case "Seven":
					case "Eight":
					case "Nine":
					{
						byte k=(byte)e.PhraseInfo.GetText(0,-1,false)[0];
                
						keybd_event((byte)(k+'0'),0,0,0);	//key down
						keybd_event((byte)(k+'0'),0,2,0);	//key up
						break;
					}
					case "Plus":
					{
						keybd_event((byte)Keys.Add,0,0,0);	//key down
						keybd_event((byte)Keys.Add,0,2,0);	//key up
						break;
					}
					case "Minus":
					{
						keybd_event((byte)Keys.Subtract,0,0,0);	//key down
						keybd_event((byte)Keys.Subtract,0,2,0);	//key up
						break;
					}
					case "Div":
					{
						keybd_event((byte)Keys.Divide,0,0,0);	//key down
						keybd_event((byte)Keys.Divide,0,2,0);	//key up
						break;
					}
					case "Mul":
					{
						keybd_event((byte)Keys.Multiply,0,0,0);	//key down
						keybd_event((byte)Keys.Multiply,0,2,0);	//key up
						break;
					}
					case "Equal":
					{
						keybd_event(187,0,0,0);	//key down
						keybd_event(187,0,2,0);	//key up
						break;
					}
					case "EnterAlphabeticState":
					{
						//load grammar
						SAPIGrammarFromFile("XMLAlphabeticState.xml");

						//notify user
						label1.Text="Alphabetic State...";
						break;
					}
					case "abcA":case "abcB":case "abcC":case "abcD":case "abcE":case "abcF":case "abcG":
					case "abcH":case "abcI":case "abcJ":case "abcK":case "abcL":case "abcM":case "abcN":
					case "abcO":case "abcP":case "abcQ":case "abcR":case "abcS":case "abcT":case "abcU":
					case "abcV":case "abcW":case "abcX":case "abcY":case "abcZ":
					{
						firstRecognition=phrase;
						string str1=phrase;
						str1=str1.ToUpper();
						keybd_event((byte)(str1[0]),0,0,0);	//key down
						keybd_event((byte)(str1[0]),0,2,0);	//key up
						break;
					}
					case "At":
					{
						keybd_event((byte)Keys.LShiftKey,0,0,0);	//key down
						keybd_event((byte)Keys.D2,0,0,0);			//key down
						keybd_event((byte)Keys.D2,0,2,0);			//key up
						keybd_event((byte)Keys.LShiftKey,0,2,0);	//key up
						break;
					}
					case "UnderLine":
					{
						keybd_event((byte)Keys.LShiftKey,0,0,0);	//key down
						keybd_event((byte)Keys.OemMinus,0,0,0);		//key down
						keybd_event((byte)Keys.OemMinus,0,2,0);		//key up
						keybd_event((byte)Keys.LShiftKey,0,2,0);	//key up
						break;
					}
					case "Dash":
					{
						keybd_event((byte)Keys.Subtract,0,0,0);		//key down
						keybd_event((byte)Keys.Subtract,0,2,0);		//key up
						break;
					}
					case "Dot":
					{
						keybd_event(190,0,0,0);	//key down
						keybd_event(190,0,2,0);	//key up
						break;
					}
					case "BackSlash":
					{
						keybd_event((byte)Keys.Divide,0,0,0);	//key down
						keybd_event((byte)Keys.Divide,0,2,0);	//key up
						break;
					}
					case "AlphabeticStateNo":
					{
						//delete the first letter
						keybd_event((byte)Keys.Back,0,0,0);	//key down
						keybd_event((byte)Keys.Back,0,2,0);	//key up

						//write the replacement letter
						string str1=firstRecognition;

						//fix miss recognition
						switch(firstRecognition)
						{
							case "a": str1="h"; break;
							case "b": str1="d"; break;
							case "c": str1="t"; break;
							case "d": str1="p"; break;
							case "f": str1="x"; break;
							case "h": str1="f"; break;
							case "m": str1="n"; break;
							case "n": str1="l"; break;
							case "l": str1="m"; break;
							case "p": str1="v"; break;
							case "u": str1="q"; break;
							case "v": str1="t"; break;
							case "e": str1="b"; break;
							case "j": str1="k"; break;
						}

						firstRecognition=str1;
						str1=str1.ToUpper();

						keybd_event((byte)(str1[0]),0,0,0);	//key down
						keybd_event((byte)(str1[0]),0,2,0);	//key up
						break;
					}
					
					//else press the key (probably a menu ...)
					default:
					{
						string str1=e.PhraseInfo.Rule.Name;
						str1=str1.ToUpper();

						keybd_event((byte)(str1[0]),0,0,0);	//key down
						keybd_event((byte)(str1[0]),0,2,0);	//key up

						//could be submenu (hook it)
						hookSubmenu(e.PhraseInfo.Rule.Name[0].ToString());
						break;
					}
				}
			}

			//if not recognized ...
			else
			{
				//Only if agent enabled
				if (menuItem14.Checked==true)
				{
					//animate character
					agent1.Play("Decline");
				}
			}
		}

		/// <summary>
		/// objRecoContext event
		/// launched every time there is change in the mic volume
		/// and updates the progressBar1.value
		/// </summary>
		/// <param name="e">current mic volume</param>
		public void RecoContext_VUMeter(int StreamNumber, object StreamPosition, int e)
		{
			MicVolume.Value=e;
		}

		private void frmMain_Load(object sender, System.EventArgs e)
		{
			//app path
			appPath=Application.StartupPath+@"\";	//to use from the debuger "\..\..\"

			//initialize SAPI objects
			initSAPI();

			//loading initial grammar
			SAPIGrammarFromFile("XMLActivate.xml");

			//notify user
            label1.Text="Deactivate";

			//reposition frmMain
			this.Left=(short)(Screen.GetBounds(this).Width-Width);
			this.Top=(short)(Screen.GetBounds(this).Height-Height-50);

			//loading character
			try
			{
				axAgent1.Characters.Load("agentAssistant",appPath+"merlin.acs");
				agent1=axAgent1.Characters.Character("agentAssistant");
			}
			catch
			{
				MessageBox.Show("Error loading character\nThe agent will be disabled...","Error - character");
				menuItem14.Checked=false;
			}

			//Only if agent enabled
			if (menuItem14.Checked==true)
			{
				//reposition character
				agent1.Left=(short)this.Left;
				agent1.Top=(short)this.Top;

				//show character
				agent1.Show(false);
				agent1.Play("Greet");
				agent1.Play("Explain");
				agent1.Speak("I'm under your control.","");
				agent1.Play("Acknowledge");
				agent1.Speak("just activate me when ever you want...","");
				agent1.Play("Wave");
				agent1.Hide(false);
			}
			
			//hide the program from the taskbar
			this.ShowInTaskbar=false;

			//Only if agent enabled
			if (menuItem14.Checked==true)
			{
				//Deactivate AutoPopupMenu, we'll use our context menu ...
				agent1.AutoPopupMenu=false;
			}
		}

		/// <summary>
		/// "exit" pressed from context menu
		/// </summary>
		private void menuItem2_Click(object sender, System.EventArgs e)
		{
			//close the program
			Close();
		}

		/// <summary>
		/// "Stop listen"/"Start listen" pressed from context menu
		/// </summary>
		private void menuItem3_Click(object sender, System.EventArgs e)
		{
			if (contextMenu1.MenuItems[0].Text=="Stop listen")
			{
				contextMenu1.MenuItems[0].Text="Start listen";
				label1.ForeColor=Color.Red;
				label2.ForeColor=Color.Red;

				//pause dictation
				grammar.State=SpeechLib.SpeechGrammarState.SGSDisabled;
			}
			else
			{
				contextMenu1.MenuItems[0].Text="Stop listen";
				label1.ForeColor=Color.White;
				label2.ForeColor=Color.White;

				//resume dictation
				grammar.State=SpeechLib.SpeechGrammarState.SGSEnabled;
			}
		}

		/// <summary>
		/// because agent1 dos not support context menu
		/// we show it in the main form in the clicked place
		/// </summary>
		private void axAgent1_ClickEvent(object sender, AxAgentObjects._AgentEvents_ClickEvent e)
		{
			if (e.button==2)
			{
				Point pnt=new Point(e.x-this.Left,e.y-this.Top);
				contextMenu1.Show(this,pnt);
			}
		}

		/// <summary>
		/// hooking menu and adding all items to the grammar
		/// </summary>
		/// <param name="hMnu">Menu handle</param>
		private void hookMenu(IntPtr hMnu)
		{
			//reset grammar
			SAPIGrammarFromFile("XMLDeactivate.xml");

			int mnuCnt=GetMenuItemCount(hMnu);
			int mnuStrCnt=0;

			if (mnuCnt!=0)
			{
				//add menu to grammar
				int i;
				command command1;
				StringBuilder mnuStr=new StringBuilder(50);
				ArrayList phraseList=new ArrayList();

				for (i=0;i<mnuCnt;i++)
				{
					//get sting from menu ... to mnuString
					GetMenuString(hMnu,i,mnuStr,50,-1);

					//make sure its not a separator
					if (mnuStr.ToString()!="")
					{
						//save in commnd1.ruleName only the underlined letter
						command1.ruleName=mnuStr.ToString();
						command1.ruleName=command1.ruleName[command1.ruleName.IndexOf('&')+1].ToString();

						//save in command1.phrase the word (without &)
						command1.phrase=mnuStr.ToString();
						if (command1.phrase.IndexOf('&')!=-1)
							command1.phrase=command1.phrase.Remove(command1.phrase.IndexOf('&'),1);
						//also delete every thing after tab ...
						if (command1.phrase.IndexOf('\t')!=-1)
							command1.phrase=command1.phrase.Remove(command1.phrase.IndexOf('\t'),command1.phrase.Length-command1.phrase.IndexOf('\t'));

						//or ...
						if (command1.phrase.IndexOf('.')!=-1)
							command1.phrase=command1.phrase.Remove(command1.phrase.IndexOf('.'),command1.phrase.Length-command1.phrase.IndexOf('.'));

						phraseList.Add(command1);

						//also count actual menu (without separators)
						mnuStrCnt++;
					}
				}

				//add the phraseList (menu) to grammar
				SAPIGrammarFromArrayList(phraseList);

				//notify user
				label1.Text="Menu... "+mnuStrCnt.ToString();
			}
		}

		/// <summary>
		/// hook submenu and add all items to grammar
		/// </summary>
		/// <param name="menuLetter">the letter after "&" that activate the menu</param>
		private void hookSubmenu(string menuLetter)
		{
			//check if there is any menu and hook it
			IntPtr hWnd=GetForegroundWindow();
			IntPtr hMnu=GetMenu(hWnd);
			int mnuCnt=GetMenuItemCount(hMnu);
			StringBuilder mnuStr=new StringBuilder(50);
			IntPtr hSubMnu;
			string str;
			int i=0;

			if (mnuCnt!=0)
			{
				//find menu position
				for (i=0;i<mnuCnt;i++)
				{
					//get sting from menu ... to mnuString
					GetMenuString(hMnu,i,mnuStr,50,-1);
					str=mnuStr.ToString();
					str=str[str.IndexOf('&')+1].ToString();

					//check if this is the menu ...
					if (menuLetter==str)
					{
						//get submenu
						hSubMnu=GetSubMenu(hMnu,i);

						//deal with it as a menu
						hookMenu(hSubMnu);                        

						//item found, we don't need to check other menu items
						break;
					}
				}
			}
		}

		/// <summary>
		/// activate timer for start tracking agent location
		/// </summary>
		private void axAgent1_DragStart(object sender, AxAgentObjects._AgentEvents_DragStartEvent e)
		{
            timer1.Enabled=true;
		}

		/// <summary>
		/// deactivate timer and stop tracking
		/// </summary>
		private void axAgent1_DragComplete(object sender, AxAgentObjects._AgentEvents_DragCompleteEvent e)
		{
			timer1.Enabled=false;
		}

		/// <summary>
		/// locate agent position and update the main form according to it
		/// </summary>
		private void timer1_Tick_1(object sender, System.EventArgs e)
		{
			//reposition frmMain
			this.Left=agent1.Left;
			this.Top=agent1.Top;
		}

		/// <summary>
		/// "Add favirites" pressed from context menu
		/// </summary>
		private void menuItem4_Click(object sender, System.EventArgs e)
		{
			//stop listen (only if it not already)
			if (menuItem3.Text=="Stop listen")
			{
				menuItem3_Click(sender,e);
			}

			frmAddFavorites frm1=new frmAddFavorites();
			// send file name to the form
			frm1.Tag=appPath+"XMLFavorites.xml";
			frm1.Show();
		}

		/// <summary>
		/// "Change character" pressed from context menu
		/// </summary>
		private void menuItem6_Click(object sender, System.EventArgs e)
		{
			if (openFileDialog1.ShowDialog()==DialogResult.OK)
			{
				//Only if agent enabled
				if (menuItem14.Checked==true)
				{
					//unload first character
					axAgent1.Characters.Unload("agentAssistant");
				}

				//loading new character
				try
				{
					axAgent1.Characters.Load("agentAssistant",openFileDialog1.FileName);
					agent1=axAgent1.Characters.Character("agentAssistant");

					//reposition character
					agent1.Left=(short)this.Left;
					agent1.Top=(short)this.Top;

					//show character
					agent1.Show(false);
					agent1.Play("Greet");
					agent1.Play("Explain");
					agent1.Speak("I'm under your control.","");
					agent1.Play("Acknowledge");
					agent1.Speak("just activate me when ever you want...","");
                    
					agent1.Play("Wave");
					agent1.Hide(false);

					//update context menu
					menuItem14.Checked=true;

					//loading initial grammar
					SAPIGrammarFromFile("XMLActivate.xml");

					//notify user
					label1.Text="Deactivate";
					label2.Text="Accuracy 0%";
				}
				catch
				{
					MessageBox.Show("Error loading character\nThe agent will be disabled...","Error - character");
					menuItem14.Checked=false;
				}
			}
		}

		/// <summary>
		/// activating "press key" and simulate press every 0.5 sec
		/// </summary>
		private void timer2_Tick(object sender, System.EventArgs e)
		{
			keybd_event(keyHolding,0,0,0);	//key down
			keybd_event(keyHolding,0,2,0);	//key up
		}

		/// <summary>
		/// load grammar after closing form
		/// must be done here (not in frmAbout and not in recognition event)
		/// because it could be closed by speech or by pressing button
		/// </summary>
		private void frmAbout1_Closed(object sender, System.EventArgs e)
		{
			//load grammar
			SAPIGrammarFromFile("XMLActivate.xml");
			frmAbout1=null;

			//notify user
			label1.Text="Deactivate";
		}

		/// <summary>
		/// load grammar after closing form
		/// must be done here (not in frmCommands and not in recognition event)
		/// because it could be closed by speech or by pressing button
		/// </summary>
		private void frmCommands1_Closed(object sender, System.EventArgs e)
		{
			//load previous grammar
			SAPIGrammarFromFile(previousGrammar);
			frmCommands1=null;
		}

		/// <summary>
		/// load grammar after closing form
		/// must be done here (not in frmFavorites and not in recognition event)
		/// because it could be closed by speech or by pressing button
		/// </summary>
		private void frmFavorites1_Closed(object sender, System.EventArgs e)
		{
			//load grammar
			SAPIGrammarFromFile("XMLDeactivate.xml");
			frmFavorites1=null;

			//notify user
			label1.Text="Activate";
		}

		/// <summary>
		/// show accuracy change form
		/// </summary>
		private void menuItem7_Click(object sender, System.EventArgs e)
		{
			frmAccuracyChange1=new frmAccuracyChange();
			frmAccuracyChange1.Tag=accuracyLimit;
			//also catch the closed event to see result returned
			frmAccuracyChange1.Closed+=new EventHandler(frmAccuracyChange1_Closed);
			frmAccuracyChange1.Show();
		}

		/// <summary>
		/// check the result returned after closing frmAccuracyChange1
		/// if result != -1 change accuracyLimit
		/// </summary>
		private void frmAccuracyChange1_Closed(object sender, System.EventArgs e)
		{
			if ((int)frmAccuracyChange1.Tag!=-1)
				accuracyLimit=(int)frmAccuracyChange1.Tag;
		}

		/// <summary>
		/// User training wizard
		/// </summary>
		private void menuItem8_Click(object sender, System.EventArgs e)
		{
			object str1="";

			if (objRecoContext.Recognizer.IsUISupported("UserTraining",ref str1)==true)
			{
				//stop listen (only if it not already)
				if (menuItem3.Text=="Stop listen")
				{
					menuItem3_Click(sender,e);
				}

				objRecoContext.Recognizer.DisplayUI((int)this.Handle,"SR","UserTraining",ref str1);
			}
			else
				MessageBox.Show("User training wizard not supported !","ERROR - activating wizard");
		}

		/// <summary>
		/// Mic training wizard
		/// </summary>
		private void menuItem9_Click(object sender, System.EventArgs e)
		{
			object str1="";

			if (objRecoContext.Recognizer.IsUISupported("MicTraining",ref str1)==true)
			{
				//stop listen (only if it not already)
				if (menuItem3.Text=="Stop listen")
				{
					menuItem3_Click(sender,e);
				}

				objRecoContext.Recognizer.DisplayUI((int)this.Handle,"SR","MicTraining",ref str1);
			}
			else
				MessageBox.Show("Mic training wizard not supported !","ERROR - activating wizard");
		}

		/// <summary>
		/// Change user profile
		/// </summary>
		private void menuItem10_Click(object sender, System.EventArgs e)
		{
			//reset
			initSAPI();

			frmProfileChange1=new frmProfileChange();
			frmProfileChange1.Closed+=new EventHandler(frmProfileChange1_Closed);
			//send objRecoContext
			frmProfileChange1.Tag=objRecoContext;
			frmProfileChange1.Show();
		}

		/// <summary>
		/// only after closing form we can laod grammar again
		/// </summary>
		private void frmProfileChange1_Closed(object sender, System.EventArgs e)
		{
			//loading initial grammar
			SAPIGrammarFromFile("XMLActivate.xml");

			//notify user
			label1.Text="Deactivate";
			label2.Text="Accuracy 0%";
		}

		/// <summary>
		/// Profile proporties wizard
		/// </summary>
		private void menuItem13_Click(object sender, System.EventArgs e)
		{
			object str1="";

			if (objRecoContext.Recognizer.IsUISupported("RecoProfileProperties",ref str1)==true)
			{
				//stop listen (only if it not already)
				if (menuItem3.Text=="Stop listen")
				{
					menuItem3_Click(sender,e);
				}

				objRecoContext.Recognizer.DisplayUI((int)this.Handle,"SR","RecoProfileProperties",ref str1);
			}
			else
				MessageBox.Show("Profile Properties wizard not supported !","ERROR - activating wizard");
		}

		private void menuItem14_Click(object sender, System.EventArgs e)
		{
			if (menuItem14.Checked==true)
			{
				menuItem14.Checked=false;
				agent1.StopAll("");
				agent1.Hide(false);
			}
			else
			{
				if (agent1!=null)
				{
					menuItem14.Checked=true;
					agent1.Show(false);
				}
				else
					MessageBox.Show("There is no agent loaded...\nYou will need to load agent first.","Error - character");
			}
		}
	}
}
