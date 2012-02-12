using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Performance_Ratio_Calculator
{
    public partial class Form1 : Form
    {
        private Mechanism[] m, m_d;
        private double wn, var, min, min_i=0, max, max_i=0;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            m = new Mechanism[360];
            m_d = new Mechanism[360];

            for (int i = 0; i < 360; i++)
            {
                m[i] = new Mechanism();
                m_d[i] = new Mechanism();
            }
        }

        private void radw2_CheckedChanged(object sender, EventArgs e)
        {
            if (radw2.Checked == true)
            {
                radn2.Checked = false;
            }
        }

        private void radn2_CheckedChanged(object sender, EventArgs e)
        {
            if (radn2.Checked == true)
            {
                radw2.Checked = false;
            }

        }

        private void btnCheck_Click(object sender, EventArgs e)
        {
            double[] temp = new double[4];
            
            temp[0] = Convert.ToDouble(txtLink1.Text);
            temp[1] = Convert.ToDouble(txtLink2.Text);
            temp[2] = Convert.ToDouble(txtLink3.Text);
            temp[3] = Convert.ToDouble(txtLink4.Text);

            Array.Sort(temp);
            Array.Reverse(temp);

            lblShortest.Text = lblShortest.Text + " " + temp[3];
            lblLongest.Text = lblLongest.Text + " " + temp[0];

            if (temp[0] + temp[3] <= temp[1] + temp[2])
            {
                btnCalculate.Enabled = true;
                btnCheck.Enabled = false;
                txtn2w2.Enabled = true;
                txtTorque.Enabled = true;
            }
            else
            {
                MessageBox.Show("The condition S + L <= P + Q fails! Please input valid lengths.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                resetProgram();
            }
        }

        private void btnCalculate_Click(object sender, EventArgs e)
        {
            string tmpmax=",",tmpmin=",";
            if (radn2.Checked == true && radw2.Checked == false)
            {
                wn = (2 * Math.PI * Convert.ToDouble(txtn2w2.Text)) / 60;
            }
            else
            {
                wn = Convert.ToDouble(txtn2w2.Text);
            }

            for (int i = 1; i <= 360; i++)
            {
                m[i - 1].omega2 = wn;
                m[i - 1].initialize(Convert.ToDouble(txtLink1.Text), Convert.ToDouble(txtLink2.Text), Convert.ToDouble(txtLink3.Text), Convert.ToDouble(txtLink4.Text), i, Convert.ToDouble(txtTorque.Text));
            }
            rtbCalc1.Text = "Angle\tTorque\n";
            min = m[0].t4;
            max = m[0].t4;
            for (int i = 1; i <= 360; i++)
            {
                m[i - 1].calculate_output_torque();
                if (m[i - 1].t4 > max)
                {
                    max = m[i - 1].t4;
                    max_i = i;
                }
                if (m[i - 1].t4 == max)
                {
                    if(max_i != i)
                        tmpmax = tmpmax + " " + i;
                }
                if (m[i - 1].t4 < min)
                {
                    min = m[i - 1].t4;
                    min_i = i;
                }
                if (m[i - 1].t4 == min)
                {
                    if(min_i != i)
                        tmpmin = tmpmin + " " + i;
                }
                rtbCalc1.Text = rtbCalc1.Text + i + "\t" + m[i - 1].t4 + "\n";
            }

            lblMaxP.Text = lblMaxP.Text + " " + max + " for theta = " + max_i + tmpmax;
            lblMinP.Text = lblMinP.Text + " " + min + " for theta = " + min_i + tmpmin;

            foreach (Control ctrl in groupBox4.Controls)
            {
                if (ctrl is TextBox)
                {
                    (ctrl as TextBox).Enabled = true;
                }
            }
            txtVariation.Enabled = true;
            btnCalcNew.Enabled = true;
        }

        private void btnCalcNew_Click(object sender, EventArgs e)
        {
            double l11 = (Convert.ToDouble(txtLink1.Text) + Convert.ToDouble(txtLink1V.Text));
            double l22 = (Convert.ToDouble(txtLink2.Text) + Convert.ToDouble(txtLink2V.Text));
            double l33 = (Convert.ToDouble(txtLink3.Text) + Convert.ToDouble(txtLink3V.Text));
            double l44 = (Convert.ToDouble(txtLink4.Text) + Convert.ToDouble(txtLink4V.Text));
            var = max * Convert.ToDouble(txtVariation.Text) /100;
            rtbCalc2.Text = "Angle\tTorque\n";
            for (int i = 1; i <= 360; i++)
            {
                m_d[i - 1].omega2 = wn;
                m_d[i - 1].initialize(l11, l22, l33, l44, i, Convert.ToDouble(txtTorque.Text));
                m_d[i - 1].calculate_output_torque();
                if (m_d[i - 1].t4 < var)
                {
                    rtbCalc2.Text = rtbCalc2.Text + i + "\t - \n";
                }
                else
                {
                    rtbCalc2.Text = rtbCalc2.Text + i + "\t" + m_d[i - 1].t4 + "\n";
                }
            }
            btnCalcNew.Enabled = false;
            btnRefresh.Enabled = true;
            btnSave.Enabled = true;
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            rtbCalc2.Text = "Angle\tTorque\n";
            var = max * Convert.ToDouble(txtVariation.Text) / 100; 
            for (int i = 1; i <= 360; i++)
            {
                if (m_d[i - 1].t4 < var)
                {
                    rtbCalc2.Text = rtbCalc2.Text + i + "\t - \n";
                }
                else
                {
                    rtbCalc2.Text = rtbCalc2.Text + i + "\t" + m_d[i - 1].t4 + "\n";
                }
            }
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            resetProgram();
        }

        private void resetProgram()
        {
            txtLink1.Clear();
            txtLink2.Clear();
            txtLink3.Clear();
            txtLink4.Clear();

            txtn2w2.Clear();
            txtn2w2.Enabled = false;
            txtTorque.Clear();
            txtTorque.Enabled = false;
            txtLink1V.Clear();
            txtLink1V.Enabled = false;
            txtLink2V.Clear();
            txtLink2V.Enabled = false;
            txtLink3V.Clear();
            txtLink3V.Enabled = false;
            txtLink4V.Clear();
            txtLink4V.Enabled = false;
            txtVariation.Clear();
            txtVariation.Enabled = false;

            lblLongest.Text = "Longest Link:";
            lblShortest.Text = "Shortest Link:";
            lblMaxP.Text = "Maximum Performance";
            lblMinP.Text = "Minimum Performance";

            btnCalculate.Enabled = false;
            btnCalcNew.Enabled = false;
            btnRefresh.Enabled = false;
            btnSave.Enabled = false;
            btnCheck.Enabled = true;

            rtbCalc1.Clear();
            rtbCalc2.Clear();
        }

        private void txtLink1V_TextChanged(object sender, EventArgs e)
        {
            btnCalcNew.Enabled = true;
        }

        private void txtLink1_TextChanged(object sender, EventArgs e)
        {
            btnCheck.Enabled = true;
        }
    }             
}
