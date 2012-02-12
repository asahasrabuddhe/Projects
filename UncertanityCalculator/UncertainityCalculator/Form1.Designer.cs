namespace UncertainityCalculator
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
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.txtLoad = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnAccept = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtD = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtLC = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtEM = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtES = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtMU = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtSD = new System.Windows.Forms.TextBox();
            this.btnSolve = new System.Windows.Forms.Button();
            this.btnViewReport = new System.Windows.Forms.Button();
            this.btnReset = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(104, 30);
            this.label1.TabIndex = 0;
            this.label1.Text = "Input Data";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.txtLoad);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.btnAccept);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txtD);
            this.groupBox1.Font = new System.Drawing.Font("Segoe UI Light", 12.75F);
            this.groupBox1.Location = new System.Drawing.Point(12, 58);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(436, 162);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Input Diameter and Breaking Load";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(170, 130);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(0, 23);
            this.label10.TabIndex = 7;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(6, 130);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(164, 23);
            this.label9.TabIndex = 6;
            this.label9.Text = "Number of Readings:";
            // 
            // txtLoad
            // 
            this.txtLoad.Location = new System.Drawing.Point(164, 70);
            this.txtLoad.Name = "txtLoad";
            this.txtLoad.Size = new System.Drawing.Size(138, 30);
            this.txtLoad.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(160, 35);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(113, 23);
            this.label3.TabIndex = 4;
            this.label3.Text = "Breaking Load";
            // 
            // btnAccept
            // 
            this.btnAccept.Location = new System.Drawing.Point(298, 106);
            this.btnAccept.Name = "btnAccept";
            this.btnAccept.Size = new System.Drawing.Size(132, 44);
            this.btnAccept.TabIndex = 2;
            this.btnAccept.Text = "Accept Reading";
            this.btnAccept.UseVisualStyleBackColor = true;
            this.btnAccept.Click += new System.EventHandler(this.btnAccept_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 35);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "Diameter";
            // 
            // txtD
            // 
            this.txtD.Location = new System.Drawing.Point(10, 70);
            this.txtD.Name = "txtD";
            this.txtD.Size = new System.Drawing.Size(138, 30);
            this.txtD.TabIndex = 0;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtLC);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.txtEM);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.txtES);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.txtMU);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.txtSD);
            this.groupBox2.Font = new System.Drawing.Font("Segoe UI Light", 12.75F);
            this.groupBox2.Location = new System.Drawing.Point(454, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(436, 208);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Other Input Data";
            // 
            // txtLC
            // 
            this.txtLC.Location = new System.Drawing.Point(267, 97);
            this.txtLC.Name = "txtLC";
            this.txtLC.Size = new System.Drawing.Size(138, 30);
            this.txtLC.TabIndex = 4;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 104);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(255, 23);
            this.label7.TabIndex = 6;
            this.label7.Text = "Least Count in the Scale 0-300 kN";
            // 
            // txtEM
            // 
            this.txtEM.Location = new System.Drawing.Point(267, 169);
            this.txtEM.Name = "txtEM";
            this.txtEM.Size = new System.Drawing.Size(138, 30);
            this.txtEM.TabIndex = 6;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 176);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(132, 23);
            this.label8.TabIndex = 6;
            this.label8.Text = "Error of Machine";
            // 
            // txtES
            // 
            this.txtES.Location = new System.Drawing.Point(267, 133);
            this.txtES.Name = "txtES";
            this.txtES.Size = new System.Drawing.Size(138, 30);
            this.txtES.TabIndex = 5;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 140);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(229, 23);
            this.label6.TabIndex = 6;
            this.label6.Text = "Error Due to Speed of Testing";
            // 
            // txtMU
            // 
            this.txtMU.Location = new System.Drawing.Point(267, 61);
            this.txtMU.Name = "txtMU";
            this.txtMU.Size = new System.Drawing.Size(138, 30);
            this.txtMU.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 68);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(183, 23);
            this.label4.TabIndex = 4;
            this.label4.Text = "Micrometer Uncertainity";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 35);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(145, 23);
            this.label5.TabIndex = 1;
            this.label5.Text = "Standard Deviation";
            // 
            // txtSD
            // 
            this.txtSD.Location = new System.Drawing.Point(267, 28);
            this.txtSD.Name = "txtSD";
            this.txtSD.Size = new System.Drawing.Size(138, 30);
            this.txtSD.TabIndex = 2;
            // 
            // btnSolve
            // 
            this.btnSolve.Location = new System.Drawing.Point(382, 226);
            this.btnSolve.Name = "btnSolve";
            this.btnSolve.Size = new System.Drawing.Size(143, 47);
            this.btnSolve.TabIndex = 7;
            this.btnSolve.Text = "Solve";
            this.btnSolve.UseVisualStyleBackColor = true;
            this.btnSolve.Click += new System.EventHandler(this.btnSolve_Click);
            // 
            // btnViewReport
            // 
            this.btnViewReport.Enabled = false;
            this.btnViewReport.Location = new System.Drawing.Point(747, 226);
            this.btnViewReport.Name = "btnViewReport";
            this.btnViewReport.Size = new System.Drawing.Size(143, 47);
            this.btnViewReport.TabIndex = 8;
            this.btnViewReport.Text = "View Report";
            this.btnViewReport.UseVisualStyleBackColor = true;
            this.btnViewReport.Click += new System.EventHandler(this.btnViewReport_Click);
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(12, 226);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(143, 47);
            this.btnReset.TabIndex = 9;
            this.btnReset.Text = "Reset";
            this.btnReset.UseVisualStyleBackColor = true;
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 30F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(901, 277);
            this.Controls.Add(this.btnReset);
            this.Controls.Add(this.btnViewReport);
            this.Controls.Add(this.btnSolve);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Segoe UI Light", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(6, 7, 6, 7);
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Uncertanity Calculator";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtLoad;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnAccept;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtD;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtLC;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtEM;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtES;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtMU;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtSD;
        private System.Windows.Forms.Button btnSolve;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnViewReport;
        private System.Windows.Forms.Button btnReset;

    }
}

