using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.IO;
using System.Windows.Forms;

namespace UncertainityCalculator
{
    class MeasurementUncertainityCalculator
    {
        //Declaration of variables required for storing input / output data of the problem.
        private double std_dev, no_of_obs, ura, deg_of_frdm, mum_unc, umb, uzb, least_count, usb, error_speed, error_machine, utmb, uc;

        //Database variables
        private OleDbConnection connection;
        private OleDbCommand command;
        private OleDbDataReader reader;

        //Constructor - Initializes the object with data and connects to the database.
        public MeasurementUncertainityCalculator()
        {
            string path;
            path = Path.GetDirectoryName(Application.ExecutablePath);
            try
            {
                connection = new OleDbConnection();
                connection.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\DB\\UC.mdb;Persist Security Info=False";
                connection.Open();
                command = new OleDbCommand();
                command.Connection = connection;
                command.CommandText = "SELECT count(Sample_Number) FROM InputTable";
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    no_of_obs = (Double.Parse(reader[0].ToString()));
                }
                reader.Close();
                reader = null;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public void initData(double sd, double mu, double lc, double es, double em)
        {
            std_dev = sd;
            mum_unc = mu;
            least_count = lc;
            error_speed = es;
            error_machine = em;
        }

        public void solve()
        {
            calculate_URA();
            calculate_UMB();
            calculate_UZB();
            calculate_USB();
            calculate_UTMB();
            calculate_UC();
            command.CommandText = "INSERT INTO OutputTable VALUES(" + ura + "," + umb + "," + uzb + "," + usb + "," + utmb + "," + uc + ")";
            int a = command.ExecuteNonQuery();
        }

        //Functions to calculate various parameters
        private void calculate_URA()
        {
            ura = std_dev / Math.Sqrt(no_of_obs);
            deg_of_frdm = no_of_obs - 1;
        }

        private void calculate_UMB()
        {
            double uts_max, uts_min, dev, max_d, min_d, max_area, min_area;

            max_d = getMaxDiameter() + mum_unc;
            min_d = getMinDiameter() - mum_unc;

            max_area = (Math.PI / 4) * Math.Pow(max_d, 2);
            min_area = (Math.PI / 4) * Math.Pow(min_d, 2);

            uts_max = getMaxLoad() / max_area;
            uts_min = getMinLoad() / min_area;

            dev = uts_max - uts_min;

            umb = dev / Math.Sqrt(3);
        }

        private void calculate_UZB()
        {
            double uts_max, uts_min, dev, max_load, min_load;

            max_load = getMaxLoad() + least_count;
            min_load = getMinLoad() - least_count;

            uts_max = max_load / getMaxArea();
            uts_min = min_load / getMinArea();

            dev = uts_max - uts_min;

            uzb = dev / Math.Sqrt(3);
        }

        private void calculate_USB()
        {
            double uts_max, uts_min, dev, max_load, min_load;

            max_load = getMaxLoad() + (getMaxLoad() * error_speed/100);
            min_load = getMinLoad() - (getMaxLoad() * error_speed/100);

            uts_max = max_load / getMaxArea();
            uts_min = min_load / getMinArea();

            dev = uts_max - uts_min;

            usb = dev / Math.Sqrt(3);
        }

        private void calculate_UTMB()
        {
            double uts_max, uts_min, dev, max_load, min_load;

            max_load = getMaxLoad() + (getMaxLoad() * error_machine/100);
            min_load = getMinLoad() - (getMaxLoad() * error_machine/100);

            uts_max = max_load / getMaxArea();
            uts_min = min_load / getMinArea();

            dev = uts_max - uts_min;

            utmb = dev / Math.Sqrt(3);
        }

        private void calculate_UC()
        {
            uc = Math.Sqrt(Math.Pow(ura, 2) + Math.Pow(umb, 2) + Math.Pow(uzb, 2) + Math.Pow(usb, 2) + Math.Pow(utmb, 2));
        }

        //Functions to access data from within the database
        private double getMaxLoad()
        {

            command.CommandText = "SELECT max(Breaking_Load) FROM InputTable";
            reader = command.ExecuteReader();
            reader.Read();
            double temp = Double.Parse(reader[0].ToString());
            reader.Close();
            reader = null;
            return temp;
        }

        private double getMinLoad()
        {
            command.CommandText = "SELECT min(Breaking_Load) FROM InputTable";
            reader = command.ExecuteReader();
            reader.Read();
            double temp = Double.Parse(reader[0].ToString());
            reader.Close();
            reader = null;
            return temp;
        }

        private double getMaxDiameter()
        {
            command.CommandText = "SELECT max(Diameter) FROM InputTable";
            reader = command.ExecuteReader();
            reader.Read();
            double temp = Double.Parse(reader[0].ToString());
            reader.Close();
            reader = null;
            return temp;
        }

        private double getMinDiameter()
        {
            command.CommandText = "SELECT min(Diameter) FROM InputTable";
            reader = command.ExecuteReader();
            reader.Read();
            double temp = Double.Parse(reader[0].ToString());
            reader.Close();
            reader = null;
            return temp;
        }

        private double getMaxArea()
        {
            command.CommandText = "SELECT max(Stress_Area) FROM InputTable";
            reader = command.ExecuteReader();
            reader.Read();
            double temp = Double.Parse(reader[0].ToString());
            reader.Close();
            reader = null;
            return temp;
        }

        private double getMinArea()
        {
            command.CommandText = "SELECT min(Stress_Area) FROM InputTable";
            reader = command.ExecuteReader();
            reader.Read();
            double temp = Double.Parse(reader[0].ToString());
            reader.Close();
            reader = null;
            return temp;
        }
    }
}
