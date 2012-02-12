using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Performance_Ratio_Calculator
{
    class Mechanism
    {
        private double[] link, output_angle, coupler_angle;
        private double v2, v3, v4, w2, w3, w4, input_torque, output_torque, theta;
        private Boolean open_mechanism;

        public Mechanism()
        {
            link = new double[4];
            output_angle = new double[2];
            coupler_angle = new double[2];
        }

        public void initialize(double l1, double l2, double l3, double l4, double t, double i)
        {                                                  
            link[0] = Math.Round(l1,4);
            link[1] = Math.Round(l2,4);
            link[2] = Math.Round(l3,4);
            link[3] = Math.Round(l4,4);

            theta = Math.Round((t * Math.PI / 180),4);
            input_torque = Math.Round(i,4);

            if (t <= 180)
            {
                open_mechanism = true;
            }
            else
            {
                open_mechanism = false;
            }

            calculate_coupler_angle();
            calculate_output_angle();
        }

        private void calculate_output_angle()
        {
            double a, b, c, k1, k2, k3;

            k1 = Math.Round((link[0] / link[1]),4);
            k2 = Math.Round((link[0] / link[3]),4);
            k3 = Math.Round(((Math.Pow(link[1], 2) - Math.Pow(link[2], 2) + Math.Pow(link[3], 2) + Math.Pow(link[0], 2)) / (2 * link[1] * link[3])),4);

            a = Math.Round((Math.Cos(theta) - k1 - (k2 * Math.Cos(theta)) + k3),4);
            b = Math.Round((-2 * Math.Sin(theta)),4);
            c = Math.Round((k1 - ((k2 + 1) * Math.Cos(theta)) + k3),4);

            fi1 = Math.Round(((2 * (180 / Math.PI) * Math.Atan((-b + Math.Sqrt((b * b) - (4 * a * c))) / (2 * a)))),4);
            fi2 = Math.Round(((2 * (180 / Math.PI) * Math.Atan((-b - Math.Sqrt((b * b) - (4 * a * c))) / (2 * a)))),4);
        }

        private void calculate_coupler_angle()
        {
            double d, e, f, k1, k4, k5;

            k1 = Math.Round((link[0] / link[1]),4);
            k4 = Math.Round((link[2] / link[2]),4);
            k5 = Math.Round(((Math.Pow(link[3], 2) - Math.Pow(link[0], 2) - Math.Pow(link[1], 2) - Math.Pow(link[2], 2)) / (2 * link[1] * link[2])),4);

            d = Math.Round((((1 + k4) * Math.Cos(theta)) - k1 + k5),4);
            e = Math.Round(((-2 * Math.Sin(theta))),4);
            f = Math.Round((k1 + ((k4 - 1) * Math.Cos(theta)) + k5),4);

            beta1 = (2 * (180 / Math.PI) * Math.Atan((-e + Math.Sqrt((e * e) - (4 * d * f))) / (2 * d)));
            beta2 = (2 * (180 / Math.PI) * Math.Atan((-e - Math.Sqrt((e * e) - (4 * d * f))) / (2 * d)));
        }

        public void calculate_output_torque()
        {
            v2 = Math.Round((w2 * link[1] / 1000),4);
            if (open_mechanism)
            {
                v3 = Math.Round(((v2 * Math.Sin((fi2 * (Math.PI / 180)) - theta)) / (Math.Sin((180 - fi2 + beta2) * (Math.PI / 180)))), 4);
                v4 = Math.Round(((v2 * Math.Sin(theta - (beta2 * (Math.PI / 180)))) / (Math.Sin((180 - fi2 + beta2) * (Math.PI / 180)))), 4);
            }
            else
            {
                v3 = Math.Round(((v2 * Math.Sin((fi1 * (Math.PI / 180)) - theta)) / (Math.Sin((180 - fi1 + beta1) * (Math.PI / 180)))), 4);
                v4 = Math.Round(((v2 * Math.Sin(theta - (beta1 * (Math.PI / 180)))) / (Math.Sin((180 - fi1 + beta1) * (Math.PI / 180)))), 4);
            }

            w3 = Math.Round((v3 / (link[2] / 1000)),4);
            w4 = Math.Round((v4 / (link[3] / 1000)),4);

            t4 = Math.Round((t2 * w2 / w4), 4);
        }

        public double fi1
        {
            set
            {
                output_angle[0] = value;
            }
            get
            {
                return output_angle[0];
            }
        }

        public double fi2
        {
            set
            {
                output_angle[1] = value;
            }
            get
            {
                return output_angle[1];
            }
        }

        public double beta1
        {
            set
            {
                coupler_angle[0] = value;
            }
            get
            {
                return coupler_angle[0];
            }
        }

        public double beta2
        {
            set
            {
                coupler_angle[1] = value;
            }
            get
            {
                return coupler_angle[1];
            }
        }

        public double omega2
        {
            set
            {
                w2 = value;
            }
            get
            {
                return w2;
            }
        }

        public double omega3
        {
            set
            {
                w3 = value;
            }
            get
            {
                return w3;
            }
        }

        public double omega4
        {
            set
            {
                w4 = value;
            }
            get
            {
                return w4;
            }
        }

        public double t4
        {
            get
            {
                return output_torque;
            }
            set
            {
                output_torque = value;
            }
        }
       
        public double t2
        {
            get
            {
                return input_torque;
            }
            set
            {
                input_torque = value;
            }
        }
        
        public double th
        {
            get
            {
                return theta;
            }
            set
            {
               theta = value;
            }
        }

    }
}
