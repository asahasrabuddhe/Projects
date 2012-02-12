using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;
using System.IO;

namespace UncertainityCalculator
{
    public partial class Form1 : Form
    {
        private MeasurementUncertainityCalculator muc;
        private OleDbConnection connection;
        private int count = 0;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                string path;
                path = Path.GetDirectoryName(Application.ExecutablePath);
                connection = new OleDbConnection();
                connection.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\DB\\UC.mdb;Persist Security Info=False";
                connection.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.CommandText = "DELETE * FROM InputTable";
                cmd.Connection = connection;
                int a = cmd.ExecuteNonQuery();
                cmd.CommandText = "DELETE * FROM OutputTable";
                a = cmd.ExecuteNonQuery();
                label10.Text = count.ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        private void btnAccept_Click(object sender, EventArgs e)
        {
            count++;

            double diameter = Double.Parse(txtD.Text);
            double load = Double.Parse(txtLoad.Text);

            double stress_area, uts_mpa;

            stress_area = (Math.PI / 4) * Math.Pow(diameter, 2);
            uts_mpa = load / stress_area;

            OleDbCommand command = new OleDbCommand();
            command.CommandText = "INSERT INTO InputTable VALUES(" + count + "," + diameter + "," + stress_area + "," + load + "," + uts_mpa + ")";
            command.Connection = connection;
            int a = command.ExecuteNonQuery();

            txtD.Clear();
            txtLoad.Clear();
            label10.Text = count.ToString();
            txtD.Focus();
        }

        private void btnSolve_Click(object sender, EventArgs e)
        {
            connection.Close();
            muc = new MeasurementUncertainityCalculator();
            muc.initData(Double.Parse(txtSD.Text), Double.Parse(txtMU.Text), Double.Parse(txtLC.Text), Double.Parse(txtES.Text), Double.Parse(txtEM.Text));
            muc.solve();
            Form2 f = new Form2(txtSD.Text, txtMU.Text, txtLC.Text, txtES.Text, txtEM.Text);
            f.Show();
            btnSolve.Enabled = false;
            btnViewReport.Enabled = true;
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            if (connection.State.Equals(ConnectionState.Closed))
            {
                connection = new OleDbConnection();
                connection.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\DB\\UC.mdb;Persist Security Info=False";
                connection.Open();
            }
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "DELETE * FROM InputTable";
            cmd.Connection = connection;
            int a = cmd.ExecuteNonQuery();
            cmd.CommandText = "DELETE * FROM OutputTable";
            a = cmd.ExecuteNonQuery();
        }

        private void btnViewReport_Click(object sender, EventArgs e)
        {
            Form2 f = new Form2(txtSD.Text, txtMU.Text, txtLC.Text, txtES.Text, txtEM.Text);
            f.Show();
        }
    }
}
