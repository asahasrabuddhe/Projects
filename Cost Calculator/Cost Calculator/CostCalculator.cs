using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Cost_Calculator
{
    public partial class CostCalculator : Form
    {
        private Cost costo,costr;
        private double ao,co;

        public CostCalculator()
        {
            InitializeComponent();
        }

        private void btnCost_Click(object sender, EventArgs e)
        {
            costr = new Cost(double.Parse(txtQ.Text), double.Parse(txtS0.Text), double.Parse(txtZ.Text), double.Parse(txtF.Text), double.Parse(txtNs.Text), double.Parse(txtNb.Text), double.Parse(txtNc.Text), double.Parse(txtCs.Text), double.Parse(txtCb.Text), double.Parse(txtCe.Text), double.Parse(txtCf.Text), double.Parse(txtCc.Text), double.Parse(txtT1.Text), double.Parse(txtT2.Text), double.Parse(txtK1.Text), double.Parse(txtK2.Text), double.Parse(txtK.Text));
            costr.calculate_cost(double.Parse(txtAlpha.Text), double.Parse(txtAlphaMax.Text), double.Parse(txtStep.Text),ao,co);
        }

        private void btnCalculateOptimal_Click(object sender, EventArgs e)
        {
            costo = new Cost(double.Parse(txtQ.Text), double.Parse(txtS0.Text), double.Parse(txtZ.Text), double.Parse(txtF.Text), double.Parse(txtNs.Text), double.Parse(txtNb.Text), double.Parse(txtNc.Text), double.Parse(txtCs.Text), double.Parse(txtCb.Text), double.Parse(txtCe.Text), double.Parse(txtCf.Text), double.Parse(txtCc.Text), double.Parse(txtT1.Text), double.Parse(txtT2.Text), double.Parse(txtK1.Text), double.Parse(txtK2.Text), double.Parse(txtK.Text));
            lblOptimal.Text = costo.calculate_optimal();
            co = costo.cost;
            ao = costo.ao;
        }           
    }
}
