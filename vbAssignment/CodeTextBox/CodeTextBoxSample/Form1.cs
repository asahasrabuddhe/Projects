using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace CodeTextBoxSample
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //This is some comment...
            codeTextBox1.UpdateSyntaxHightlight();
        }

        private void codeTextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
