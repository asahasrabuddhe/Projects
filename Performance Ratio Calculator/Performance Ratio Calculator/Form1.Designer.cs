namespace Performance_Ratio_Calculator
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.txtTorque = new System.Windows.Forms.TextBox();
            this.btnCalculate = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.txtn2w2 = new System.Windows.Forms.TextBox();
            this.radn2 = new System.Windows.Forms.RadioButton();
            this.radw2 = new System.Windows.Forms.RadioButton();
            this.lblMinP = new System.Windows.Forms.Label();
            this.lblMaxP = new System.Windows.Forms.Label();
            this.btnReset = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.rtbCalc1 = new System.Windows.Forms.RichTextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label7 = new System.Windows.Forms.Label();
            this.lblLongest = new System.Windows.Forms.Label();
            this.lblShortest = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnCheck = new System.Windows.Forms.Button();
            this.txtLink4 = new System.Windows.Forms.TextBox();
            this.txtLink3 = new System.Windows.Forms.TextBox();
            this.txtLink2 = new System.Windows.Forms.TextBox();
            this.txtLink1 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnRefresh = new System.Windows.Forms.Button();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.rtbCalc2 = new System.Windows.Forms.RichTextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.btnCalcNew = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.txtVariation = new System.Windows.Forms.TextBox();
            this.txtLink4V = new System.Windows.Forms.TextBox();
            this.txtLink3V = new System.Windows.Forms.TextBox();
            this.txtLink2V = new System.Windows.Forms.TextBox();
            this.txtLink1V = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.IsSplitterFixed = true;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.txtTorque);
            this.splitContainer1.Panel1.Controls.Add(this.btnCalculate);
            this.splitContainer1.Panel1.Controls.Add(this.label5);
            this.splitContainer1.Panel1.Controls.Add(this.txtn2w2);
            this.splitContainer1.Panel1.Controls.Add(this.radn2);
            this.splitContainer1.Panel1.Controls.Add(this.radw2);
            this.splitContainer1.Panel1.Controls.Add(this.lblMinP);
            this.splitContainer1.Panel1.Controls.Add(this.lblMaxP);
            this.splitContainer1.Panel1.Controls.Add(this.groupBox3);
            this.splitContainer1.Panel1.Controls.Add(this.groupBox2);
            this.splitContainer1.Panel1.Controls.Add(this.groupBox1);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.btnReset);
            this.splitContainer1.Panel2.Controls.Add(this.txtVariation);
            this.splitContainer1.Panel2.Controls.Add(this.btnCalcNew);
            this.splitContainer1.Panel2.Controls.Add(this.label8);
            this.splitContainer1.Panel2.Controls.Add(this.btnSave);
            this.splitContainer1.Panel2.Controls.Add(this.btnRefresh);
            this.splitContainer1.Panel2.Controls.Add(this.groupBox5);
            this.splitContainer1.Panel2.Controls.Add(this.groupBox4);
            this.splitContainer1.Size = new System.Drawing.Size(815, 646);
            this.splitContainer1.SplitterDistance = 402;
            this.splitContainer1.SplitterWidth = 10;
            this.splitContainer1.TabIndex = 0;
            // 
            // txtTorque
            // 
            this.txtTorque.Enabled = false;
            this.txtTorque.Location = new System.Drawing.Point(262, 119);
            this.txtTorque.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtTorque.Name = "txtTorque";
            this.txtTorque.Size = new System.Drawing.Size(136, 27);
            this.txtTorque.TabIndex = 9;
            // 
            // btnCalculate
            // 
            this.btnCalculate.Enabled = false;
            this.btnCalculate.Location = new System.Drawing.Point(262, 155);
            this.btnCalculate.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnCalculate.Name = "btnCalculate";
            this.btnCalculate.Size = new System.Drawing.Size(136, 25);
            this.btnCalculate.TabIndex = 9;
            this.btnCalculate.Text = "Calculate Performance";
            this.btnCalculate.UseVisualStyleBackColor = true;
            this.btnCalculate.Click += new System.EventHandler(this.btnCalculate_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(262, 99);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(71, 19);
            this.label5.TabIndex = 8;
            this.label5.Text = "Input Torque";
            // 
            // txtn2w2
            // 
            this.txtn2w2.Enabled = false;
            this.txtn2w2.Location = new System.Drawing.Point(177, 150);
            this.txtn2w2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtn2w2.Name = "txtn2w2";
            this.txtn2w2.Size = new System.Drawing.Size(79, 27);
            this.txtn2w2.TabIndex = 11;
            // 
            // radn2
            // 
            this.radn2.AutoSize = true;
            this.radn2.Location = new System.Drawing.Point(15, 163);
            this.radn2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.radn2.Name = "radn2";
            this.radn2.Size = new System.Drawing.Size(114, 23);
            this.radn2.TabIndex = 6;
            this.radn2.TabStop = true;
            this.radn2.Text = "Input Crank Speed";
            this.radn2.UseVisualStyleBackColor = true;
            this.radn2.CheckedChanged += new System.EventHandler(this.radn2_CheckedChanged);
            // 
            // radw2
            // 
            this.radw2.AutoSize = true;
            this.radw2.Checked = true;
            this.radw2.Location = new System.Drawing.Point(15, 145);
            this.radw2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.radw2.Name = "radw2";
            this.radw2.Size = new System.Drawing.Size(166, 23);
            this.radw2.TabIndex = 10;
            this.radw2.TabStop = true;
            this.radw2.Text = "Input Crank Angular Velocity ";
            this.radw2.UseVisualStyleBackColor = true;
            this.radw2.CheckedChanged += new System.EventHandler(this.radw2_CheckedChanged);
            // 
            // lblMinP
            // 
            this.lblMinP.AutoSize = true;
            this.lblMinP.Location = new System.Drawing.Point(18, 614);
            this.lblMinP.Name = "lblMinP";
            this.lblMinP.Size = new System.Drawing.Size(120, 19);
            this.lblMinP.TabIndex = 9;
            this.lblMinP.Text = "Minimum Performance:";
            // 
            // lblMaxP
            // 
            this.lblMaxP.AutoSize = true;
            this.lblMaxP.Location = new System.Drawing.Point(17, 595);
            this.lblMaxP.Name = "lblMaxP";
            this.lblMaxP.Size = new System.Drawing.Size(122, 19);
            this.lblMaxP.TabIndex = 8;
            this.lblMaxP.Text = "Maximum Performance:";
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(13, 610);
            this.btnReset.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(98, 27);
            this.btnReset.TabIndex = 1;
            this.btnReset.Text = "Reset Program";
            this.btnReset.UseVisualStyleBackColor = true;
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.rtbCalc1);
            this.groupBox3.Location = new System.Drawing.Point(15, 188);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox3.Size = new System.Drawing.Size(380, 403);
            this.groupBox3.TabIndex = 4;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Calculations";
            // 
            // rtbCalc1
            // 
            this.rtbCalc1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbCalc1.Location = new System.Drawing.Point(3, 24);
            this.rtbCalc1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.rtbCalc1.Name = "rtbCalc1";
            this.rtbCalc1.Size = new System.Drawing.Size(374, 375);
            this.rtbCalc1.TabIndex = 5;
            this.rtbCalc1.Text = "";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.lblLongest);
            this.groupBox2.Controls.Add(this.lblShortest);
            this.groupBox2.Location = new System.Drawing.Point(262, 8);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox2.Size = new System.Drawing.Size(136, 82);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Link Data";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 107);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(0, 19);
            this.label7.TabIndex = 2;
            // 
            // lblLongest
            // 
            this.lblLongest.AutoSize = true;
            this.lblLongest.Location = new System.Drawing.Point(6, 48);
            this.lblLongest.Name = "lblLongest";
            this.lblLongest.Size = new System.Drawing.Size(73, 19);
            this.lblLongest.TabIndex = 1;
            this.lblLongest.Text = "Longest Link:";
            // 
            // lblShortest
            // 
            this.lblShortest.AutoSize = true;
            this.lblShortest.Location = new System.Drawing.Point(6, 24);
            this.lblShortest.Name = "lblShortest";
            this.lblShortest.Size = new System.Drawing.Size(75, 19);
            this.lblShortest.TabIndex = 0;
            this.lblShortest.Text = "Shortest Link:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnCheck);
            this.groupBox1.Controls.Add(this.txtLink4);
            this.groupBox1.Controls.Add(this.txtLink3);
            this.groupBox1.Controls.Add(this.txtLink2);
            this.groupBox1.Controls.Add(this.txtLink1);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 8);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(244, 130);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Input Lengths";
            // 
            // btnCheck
            // 
            this.btnCheck.Location = new System.Drawing.Point(12, 92);
            this.btnCheck.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnCheck.Name = "btnCheck";
            this.btnCheck.Size = new System.Drawing.Size(226, 29);
            this.btnCheck.TabIndex = 10;
            this.btnCheck.Text = "Check";
            this.btnCheck.UseVisualStyleBackColor = true;
            this.btnCheck.Click += new System.EventHandler(this.btnCheck_Click);
            // 
            // txtLink4
            // 
            this.txtLink4.Location = new System.Drawing.Point(170, 58);
            this.txtLink4.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLink4.Name = "txtLink4";
            this.txtLink4.Size = new System.Drawing.Size(70, 27);
            this.txtLink4.TabIndex = 9;
            this.txtLink4.TextChanged += new System.EventHandler(this.txtLink1_TextChanged);
            // 
            // txtLink3
            // 
            this.txtLink3.Location = new System.Drawing.Point(49, 58);
            this.txtLink3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLink3.Name = "txtLink3";
            this.txtLink3.Size = new System.Drawing.Size(70, 27);
            this.txtLink3.TabIndex = 8;
            this.txtLink3.TextChanged += new System.EventHandler(this.txtLink1_TextChanged);
            // 
            // txtLink2
            // 
            this.txtLink2.Location = new System.Drawing.Point(170, 27);
            this.txtLink2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLink2.Name = "txtLink2";
            this.txtLink2.Size = new System.Drawing.Size(70, 27);
            this.txtLink2.TabIndex = 7;
            this.txtLink2.TextChanged += new System.EventHandler(this.txtLink1_TextChanged);
            // 
            // txtLink1
            // 
            this.txtLink1.Location = new System.Drawing.Point(49, 27);
            this.txtLink1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLink1.Name = "txtLink1";
            this.txtLink1.Size = new System.Drawing.Size(70, 27);
            this.txtLink1.TabIndex = 6;
            this.txtLink1.TextChanged += new System.EventHandler(this.txtLink1_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(126, 58);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 19);
            this.label3.TabIndex = 5;
            this.label3.Text = "Link 4";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(5, 58);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 19);
            this.label4.TabIndex = 4;
            this.label4.Text = "Link 3";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(126, 24);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 19);
            this.label2.TabIndex = 3;
            this.label2.Text = "Link 2";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 19);
            this.label1.TabIndex = 2;
            this.label1.Text = "Link 1";
            // 
            // btnSave
            // 
            this.btnSave.Enabled = false;
            this.btnSave.Location = new System.Drawing.Point(293, 610);
            this.btnSave.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(98, 27);
            this.btnSave.TabIndex = 7;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            // 
            // btnRefresh
            // 
            this.btnRefresh.Enabled = false;
            this.btnRefresh.Location = new System.Drawing.Point(221, 158);
            this.btnRefresh.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(136, 25);
            this.btnRefresh.TabIndex = 5;
            this.btnRefresh.Text = "Refresh";
            this.btnRefresh.UseVisualStyleBackColor = true;
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.rtbCalc2);
            this.groupBox5.Location = new System.Drawing.Point(10, 188);
            this.groupBox5.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox5.Size = new System.Drawing.Size(380, 403);
            this.groupBox5.TabIndex = 6;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "New Calculations";
            // 
            // rtbCalc2
            // 
            this.rtbCalc2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbCalc2.Location = new System.Drawing.Point(3, 24);
            this.rtbCalc2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.rtbCalc2.Name = "rtbCalc2";
            this.rtbCalc2.Size = new System.Drawing.Size(374, 375);
            this.rtbCalc2.TabIndex = 5;
            this.rtbCalc2.Text = "";
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.txtLink4V);
            this.groupBox4.Controls.Add(this.txtLink3V);
            this.groupBox4.Controls.Add(this.txtLink2V);
            this.groupBox4.Controls.Add(this.txtLink1V);
            this.groupBox4.Controls.Add(this.label9);
            this.groupBox4.Controls.Add(this.label10);
            this.groupBox4.Controls.Add(this.label11);
            this.groupBox4.Controls.Add(this.label12);
            this.groupBox4.Location = new System.Drawing.Point(10, 8);
            this.groupBox4.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox4.Size = new System.Drawing.Size(251, 99);
            this.groupBox4.TabIndex = 6;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Input Length Variation";
            // 
            // btnCalcNew
            // 
            this.btnCalcNew.Enabled = false;
            this.btnCalcNew.Location = new System.Drawing.Point(267, 32);
            this.btnCalcNew.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnCalcNew.Name = "btnCalcNew";
            this.btnCalcNew.Size = new System.Drawing.Size(103, 56);
            this.btnCalcNew.TabIndex = 10;
            this.btnCalcNew.Text = "Calculate New Performance";
            this.btnCalcNew.UseVisualStyleBackColor = true;
            this.btnCalcNew.Click += new System.EventHandler(this.btnCalcNew_Click);
            // 
            // label8
            // 
            this.label8.Location = new System.Drawing.Point(16, 123);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(212, 23);
            this.label8.TabIndex = 11;
            this.label8.Text = "Acceptable % Variation in Performance";
            // 
            // txtVariation
            // 
            this.txtVariation.Enabled = false;
            this.txtVariation.Location = new System.Drawing.Point(221, 123);
            this.txtVariation.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtVariation.Name = "txtVariation";
            this.txtVariation.Size = new System.Drawing.Size(106, 27);
            this.txtVariation.TabIndex = 5;
            // 
            // txtLink4V
            // 
            this.txtLink4V.Enabled = false;
            this.txtLink4V.Location = new System.Drawing.Point(166, 64);
            this.txtLink4V.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLink4V.Name = "txtLink4V";
            this.txtLink4V.Size = new System.Drawing.Size(70, 27);
            this.txtLink4V.TabIndex = 9;
            this.txtLink4V.TextChanged += new System.EventHandler(this.txtLink1V_TextChanged);
            // 
            // txtLink3V
            // 
            this.txtLink3V.Enabled = false;
            this.txtLink3V.Location = new System.Drawing.Point(50, 64);
            this.txtLink3V.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLink3V.Name = "txtLink3V";
            this.txtLink3V.Size = new System.Drawing.Size(70, 27);
            this.txtLink3V.TabIndex = 8;
            this.txtLink3V.TextChanged += new System.EventHandler(this.txtLink1V_TextChanged);
            // 
            // txtLink2V
            // 
            this.txtLink2V.Enabled = false;
            this.txtLink2V.Location = new System.Drawing.Point(166, 24);
            this.txtLink2V.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLink2V.Name = "txtLink2V";
            this.txtLink2V.Size = new System.Drawing.Size(70, 27);
            this.txtLink2V.TabIndex = 7;
            this.txtLink2V.TextChanged += new System.EventHandler(this.txtLink1V_TextChanged);
            // 
            // txtLink1V
            // 
            this.txtLink1V.Enabled = false;
            this.txtLink1V.Location = new System.Drawing.Point(50, 24);
            this.txtLink1V.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLink1V.Name = "txtLink1V";
            this.txtLink1V.Size = new System.Drawing.Size(70, 27);
            this.txtLink1V.TabIndex = 6;
            this.txtLink1V.TextChanged += new System.EventHandler(this.txtLink1V_TextChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(124, 64);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(38, 19);
            this.label9.TabIndex = 5;
            this.label9.Text = "Link 4";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 64);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(38, 19);
            this.label10.TabIndex = 4;
            this.label10.Text = "Link 3";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(124, 24);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(38, 19);
            this.label11.TabIndex = 3;
            this.label11.Text = "Link 2";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(6, 24);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(38, 19);
            this.label12.TabIndex = 2;
            this.label12.Text = "Link 1";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(815, 646);
            this.Controls.Add(this.splitContainer1);
            this.Font = new System.Drawing.Font("Nokia Standard Multiscript", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label lblLongest;
        private System.Windows.Forms.Label lblShortest;
        private System.Windows.Forms.Button btnCheck;
        private System.Windows.Forms.TextBox txtLink4;
        private System.Windows.Forms.TextBox txtLink3;
        private System.Windows.Forms.TextBox txtLink2;
        private System.Windows.Forms.TextBox txtLink1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RichTextBox rtbCalc1;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.TextBox txtLink4V;
        private System.Windows.Forms.TextBox txtLink3V;
        private System.Windows.Forms.TextBox txtLink2V;
        private System.Windows.Forms.TextBox txtLink1V;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtVariation;
        private System.Windows.Forms.Button btnCalculate;
        private System.Windows.Forms.Button btnCalcNew;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnReset;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnRefresh;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.RichTextBox rtbCalc2;
        private System.Windows.Forms.Label lblMinP;
        private System.Windows.Forms.Label lblMaxP;
        private System.Windows.Forms.TextBox txtn2w2;
        private System.Windows.Forms.RadioButton radn2;
        private System.Windows.Forms.RadioButton radw2;
        private System.Windows.Forms.TextBox txtTorque;
        private System.Windows.Forms.Label label5;

    }
}

