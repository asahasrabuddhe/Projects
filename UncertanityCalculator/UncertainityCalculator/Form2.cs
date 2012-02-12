using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace UncertainityCalculator
{
    public partial class Form2 : Form
    {
        private CrystalDecisions.CrystalReports.Engine.TextObject T;
        private string std_dev, mum_unc, least_count, error_speed, error_machine;
        public Form2(string sd, string mu, string lc, string es, string em)
        {
            InitializeComponent();
            std_dev = sd;
            mum_unc = mu;
            least_count = lc;
            error_speed = es;
            error_machine = em;
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            UncertainityReport uR = new UncertainityReport();
            T = uR.Section4.ReportObjects["Text10"] as CrystalDecisions.CrystalReports.Engine.TextObject;
            T.Text = T.Text + " " + std_dev;
            T = uR.Section4.ReportObjects["Text11"] as CrystalDecisions.CrystalReports.Engine.TextObject;
            T.Text = T.Text + " " + mum_unc;
            T = uR.Section4.ReportObjects["Text12"] as CrystalDecisions.CrystalReports.Engine.TextObject;
            T.Text = T.Text + " " + least_count;
            T = uR.Section4.ReportObjects["Text14"] as CrystalDecisions.CrystalReports.Engine.TextObject;
            T.Text = T.Text + " " + error_speed;
            T = uR.Section4.ReportObjects["Text15"] as CrystalDecisions.CrystalReports.Engine.TextObject;
            T.Text = T.Text + " " + error_machine;
            uR.Refresh();
            crystalReportViewer1.ReportSource = uR;
            crystalReportViewer1.Show();
        }
    }
}

