using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using Cost_Calculator;

namespace Cost_Calculator
{
    class Cost
    {
        private double alpha, alpha_max, alpha_calc, step, z, z1, z2, np, nr, w, nb, nc, ns, q, S0, k, k1, k2, k1d, k2d, cs, cb, ce, cf, t1, t2, f, u1, u2, fi1, fi2, r, y, b, c, h1, h2, yc, cc;
        public double ao,cost;
        private double[] temp = new double[10];

        public Cost(double q, double S0, double z, double f, double ns, double nb, double nc, double cs, double cb, double ce, double cf, double cc, double t1, double t2, double k1, double k2, double k)
        {
            this.q = q;
            this.S0 = S0;
            this.z = z;
            this.f = f;
            this.ns = ns;
            this.nb = nb;
            this.nc = nc;
            this.cs = cs;
            this.cb = cb;
            this.ce = ce;
            this.cf = cf;
            this.cc = cc;
            this.t1 = t1;
            this.t2 = t2;
            this.k = k;
            this.k1 = k1;
            this.k2 = k2;
        }

        //Calculation of Z1,Z2,np,nr and w
        private void step2()
        {
            z1 = Math.Round((Math.Sqrt((1 + (z * z))) - z),4);
            z2 = Math.Round((Math.Atan(1 / z)),4);
            np = Math.Round((nc / nb),4);
            nr = Math.Round((ns / nb),4);
            temp[0] = q * nb;
            temp[1] = Math.Sqrt(S0);
            temp[2] = temp[0] * 1.0 / temp[1];
            w =  Math.Round((Math.Pow(temp[2], 3 * 1.0 / 8)),4);
        }

        //Calculation of K1-dash and k2-dash
        private void step3()
        {
            temp[0] = (2 * (k2 * k2) * f * z * ce);
            temp[1] = (t1 * (1 - k2) * cf);
            temp[2] = (t2 * (1 - k2) * cf);
            temp[3] = (4 * Math.Pow((1 - k2), 2) * f * z * cf);
            temp[4] = (2 * Math.Sqrt(1 + (z * z)) * cs);
            k1d = Math.Round((temp[0] + temp[1] + temp[2] + temp[3] + temp[4]),4);
            k2d = Math.Round(((k2 * f * ce) + cb),4);
        }

        //Calculation of U1 and U2
        private void step4()
        {
            u1 = Math.Round((k1d / (k2 * ce * w)),4);
            u2 = Math.Round((k2d / (k2 * ce * w)),4);
        }

        //Calculation of Functional Parameter fi1 and fi2
        private void step5()
        {
            temp[0] = (alpha + (2 * Math.Pow(nr, 1.5) * Math.Sqrt(1 + (z * z))));
            temp[1] = ((2 * Math.Pow(np, 1.5) * k * z1));// / 10;
            temp[2] = ((2 * Math.Pow(np, 1.5) * k * z2));// / 10;
            temp[3] = (alpha + (2 * k * z1));
            temp[4] = (z - (2 * (k * k) * z1));
            temp[5] = ((k * k) * z2);/// 10;
            double nrt = (temp[0] - temp[1] + temp[2]);
            double dnm = (temp[3] + temp[4] + temp[5]);
            fi2 = Math.Round((Math.Pow(nrt, (1.0 / 4)) / Math.Pow(dnm, (5.0 / 8))),4);
            temp[0] = (10 * Math.Pow(nr, 1.5) * Math.Sqrt((1 + (z * z)))); //a2
            temp[1] = (10 * Math.Pow(np, 1.5) * (z2 - z1) * k); //a3
            temp[2] = (4 * z1 * k - (2 * z)); //a4
            temp[3] = (2 * ((2 * z1) - z2) * (k * k)); //a5
            temp[4] = (Math.Pow(nr, 1.5) * Math.Sqrt((1 + (z * z)))) * ((6 * alpha) + (16 * z) + (12 * z1 * k) + (8 * z1 * k * k) - (4 * z2 * k * k)); //b2
            temp[5] = (10 * z) * (alpha); //b3
            temp[6] = 10 * Math.Pow(np, 1.5) * (z2 - z1) * k * alpha; //b4
            temp[7] = 10 * z1 * k * alpha; //b5
            temp[8] = 20 * Math.Pow(np, 1.5) * ((z1 * z2) - (z1 * z1)) * (k * k); // b6 //check
            temp[9] = 20 * Math.Pow(np, 1.5) * z * (z2 - z1) * k; //b7 //check
            nrt = (3 * alpha) + temp[0] + temp[1] + temp[2] + temp[3]; //A
            dnm = (5 * alpha * alpha) + temp[4] + temp[5] + temp[6] + temp[7] + temp[8] + temp[9]; //B
            fi1 = Math.Round((nrt / dnm),4);
        }

        //Calculation of b/y
        private void step6()
        {
            temp[0] = (1 / fi1) * (1 + ((u2 - (u1 * fi1)) / fi2)); //check ~0.02
            temp[1] = 2 * k2 * z + (4 * z * Math.Pow((1 - k2), 2) * cf) / (k2 * ce) + 2 * k * z1;
            alpha_calc = Math.Round(((temp[0] - temp[1])),4);
        }

        //Calculation of y,b and r
        private void step7()
        {
            y = Math.Round((fi2 * w),4);
            b = Math.Round((alpha_calc * y),4);
            r = Math.Round((k1 * y),4);
        }

        //Calculation of yc, h1 and h2
        private void step8()
        {
            yc = Math.Round((k2 * (y + f)),4);
            h1 = h2 = Math.Round(((y + f) - (yc)),4);
        }

        //Calculation of cost
        private void step9()
        {
            temp[0] = ((b * k2 * y) + (2 * r * k2 * y * z1) + (k2 * k2 * y * y * z) - (2 * r * r * z1) + (r * r * z2)) * ce;
            temp[1] = (t1 * (y + f - k2 * y) + z * (y + f - k2 * y) * (y + f - k2 * y)) * cf;
            temp[2] = (t2 * (y + f - k2 * y) + z * (y + f - k2 * y) * (y + f - k2 * y)) * cf;
            temp[3] = b * cb + 2 * r * z2 * cc + (2 * y * Math.Sqrt(1 + (z * z)) - 2 * r * z1) * cs;
            cost = Math.Round(((temp[0] + temp[1] + temp[2] + temp[3])),4);
        }

        public String calculate_optimal()
        {
            step2();
            step3();
            step4();
            step5();
            alpha = 1.0;
            while (Math.Round(alpha, 2) != Math.Round(alpha_calc, 2))
            {
                step5();
                step6();
                alpha += 0.0001;
            }
            step7();
            step8();
            step9();
            ao = alpha_calc;
            return ("Optimal Value of b/y = " + alpha_calc + " and corresponding Cost = " + cost);
        }

        public void calculate_cost(double alpha, double alpha_max, double step,double ao,double c)
        {
            this.alpha = alpha;
            this.alpha_max = alpha_max;
            this.step = step;
            TextWriter tw = new StreamWriter("Result.txt");
            tw.WriteLine("b/y Value\tCost");
            while (alpha <= alpha_max)
            {
                step2();
                step3();
                step4();
                step5();
                step6();
                alpha_calc = alpha;
                step7();
                step8();
                step9();
                if (alpha == ao)
                {
                    cost = c;
                    alpha_calc = ao;
                }
                tw.WriteLine(alpha_calc + "\t\t" + cost);
                alpha = Math.Round((alpha+step),4);
            }
        }
    }
}

