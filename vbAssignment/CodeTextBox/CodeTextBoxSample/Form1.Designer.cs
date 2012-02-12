namespace CodeTextBoxSample
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            System.Windows.Forms.TreeNode treeNode1 = new System.Windows.Forms.TreeNode("Form");
            System.Windows.Forms.TreeNode treeNode2 = new System.Windows.Forms.TreeNode("Forms", new System.Windows.Forms.TreeNode[] {
            treeNode1});
            System.Windows.Forms.TreeNode treeNode3 = new System.Windows.Forms.TreeNode("Windows", new System.Windows.Forms.TreeNode[] {
            treeNode2});
            System.Windows.Forms.TreeNode treeNode4 = new System.Windows.Forms.TreeNode("File");
            System.Windows.Forms.TreeNode treeNode5 = new System.Windows.Forms.TreeNode("IO", new System.Windows.Forms.TreeNode[] {
            treeNode4});
            System.Windows.Forms.TreeNode treeNode6 = new System.Windows.Forms.TreeNode("System", new System.Windows.Forms.TreeNode[] {
            treeNode3,
            treeNode5});
            System.Windows.Forms.TreeNode treeNode7 = new System.Windows.Forms.TreeNode("SysInfoManager");
            System.Windows.Forms.TreeNode treeNode8 = new System.Windows.Forms.TreeNode("SysInfo", new System.Windows.Forms.TreeNode[] {
            treeNode7});
            this.codeTextBox1 = new Moonlight.CodeTextBox();
            this.SuspendLayout();
            // 
            // codeTextBox1
            // 
            this.codeTextBox1.AcceptsTab = true;
            this.codeTextBox1.AutoWordSelection = true;
            this.codeTextBox1.CodeColor_Comment = System.Drawing.Color.Green;
            this.codeTextBox1.CodeColor_Function = System.Drawing.Color.CornflowerBlue;
            this.codeTextBox1.CodeColor_Keyword = System.Drawing.Color.Blue;
            this.codeTextBox1.CodeColor_PlainText = System.Drawing.Color.Black;
            this.codeTextBox1.CodeColor_Type = System.Drawing.Color.CornflowerBlue;
            this.codeTextBox1.CodeImage_Class = ((System.Drawing.Image)(resources.GetObject("codeTextBox1.CodeImage_Class")));
            this.codeTextBox1.CodeImage_Event = ((System.Drawing.Image)(resources.GetObject("codeTextBox1.CodeImage_Event")));
            this.codeTextBox1.CodeImage_Interface = ((System.Drawing.Image)(resources.GetObject("codeTextBox1.CodeImage_Interface")));
            this.codeTextBox1.CodeImage_Method = ((System.Drawing.Image)(resources.GetObject("codeTextBox1.CodeImage_Method")));
            this.codeTextBox1.CodeImage_Namespace = ((System.Drawing.Image)(resources.GetObject("codeTextBox1.CodeImage_Namespace")));
            this.codeTextBox1.CodeImage_Property = ((System.Drawing.Image)(resources.GetObject("codeTextBox1.CodeImage_Property")));
            this.codeTextBox1.CodeWords_Comments = ((System.Collections.Generic.List<string>)(resources.GetObject("codeTextBox1.CodeWords_Comments")));
            this.codeTextBox1.CodeWords_Functions = ((System.Collections.Generic.List<string>)(resources.GetObject("codeTextBox1.CodeWords_Functions")));
            this.codeTextBox1.CodeWords_Keywords = ((System.Collections.Generic.List<string>)(resources.GetObject("codeTextBox1.CodeWords_Keywords")));
            this.codeTextBox1.CodeWords_ScopeOperators = ((System.Collections.Generic.List<string>)(resources.GetObject("codeTextBox1.CodeWords_ScopeOperators")));
            this.codeTextBox1.CodeWords_Types = ((System.Collections.Generic.List<string>)(resources.GetObject("codeTextBox1.CodeWords_Types")));
            this.codeTextBox1.DetectUrls = false;
            this.codeTextBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.codeTextBox1.Font = new System.Drawing.Font("Courier New", 8F);
            this.codeTextBox1.IntellisenseKey = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Space)));
            // 
            // 
            // 
            this.codeTextBox1.IntellisenseTree.LineColor = System.Drawing.Color.Empty;
            this.codeTextBox1.IntellisenseTree.Location = new System.Drawing.Point(0, 0);
            this.codeTextBox1.IntellisenseTree.Name = "";
            treeNode1.Name = "Form";
            treeNode1.Tag = "class";
            treeNode1.Text = "Form";
            treeNode2.Name = "Forms";
            treeNode2.Tag = "namespace";
            treeNode2.Text = "Forms";
            treeNode3.Name = "Windows";
            treeNode3.Tag = "namespace";
            treeNode3.Text = "Windows";
            treeNode4.Name = "File";
            treeNode4.Tag = "class";
            treeNode4.Text = "File";
            treeNode5.Name = "IO";
            treeNode5.Tag = "namespace";
            treeNode5.Text = "IO";
            treeNode6.Name = "System";
            treeNode6.Tag = "namespace";
            treeNode6.Text = "System";
            treeNode7.Name = "SysInfoManager";
            treeNode7.Tag = "class";
            treeNode7.Text = "SysInfoManager";
            treeNode8.Name = "SysInfo";
            treeNode8.Tag = "namespace";
            treeNode8.Text = "SysInfo";
            this.codeTextBox1.IntellisenseTree.Nodes.AddRange(new System.Windows.Forms.TreeNode[] {
            treeNode6,
            treeNode8});
            this.codeTextBox1.IntellisenseTree.TabIndex = 0;
            this.codeTextBox1.Location = new System.Drawing.Point(0, 0);
            this.codeTextBox1.Name = "codeTextBox1";
            this.codeTextBox1.Size = new System.Drawing.Size(632, 455);
            this.codeTextBox1.TabIndex = 2;
            this.codeTextBox1.Text = "";
            this.codeTextBox1.WordWrap = false;
            this.codeTextBox1.TextChanged += new System.EventHandler(this.codeTextBox1_TextChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(632, 455);
            this.Controls.Add(this.codeTextBox1);
            this.Name = "Form1";
            this.Text = "CodeTextBox Sample";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private Moonlight.CodeTextBox codeTextBox1;
    }
}

