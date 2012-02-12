 import java.awt.*;
 import java.awt.event.*;
 import javax.swing.*;
 import java.sql.*;


 public class Srh_Result extends JFrame implements ActionListener
 {

 	JLabel l,l1,l2,l3,l4,l5,l6,l7,l8 ;
 	TextArea ta1,ta2,ta3,ta4,ta5;
 	JTextField tf,tf1,tf2,tf3,tf4,tf5,tf6,tf7,tf8,tf9,tf10,tf11,tf12,tf13;
 	JTextField tf14,tf15,tf16,tf17,tf18,tf19,tf20,tf21,tf22,tf23,tf24,tf25;
 	JPanel p;
 	JButton back,exit;

 	Srh_Result(String qual)
 	{
	 	setTitle(" Search Result ");
	 	l = new JLabel(" SEARCH   RESULT   FOR  ");
	 	Font f = new Font ("Monotype Corsiva",Font.BOLD,20);
	 	l.setFont(f);
	 	l.setForeground(Color.black);
	 	l.setBounds(330,10,250,25);

	 	l1 = new JLabel("QUALIFICATION  :");
		Font f1 = new Font ("Arial",Font.BOLD,20);
		l1.setFont(f1);
		l1.setForeground(Color.red);
		l1.setBounds(310,30,175,25);

		l2 = new JLabel("ID ");
	 	Font f2 = new Font ("Arial",Font.BOLD,15);
	 	l2.setFont(f2);
	 	l2.setForeground(Color.black);
	 	l2.setBounds(20,75,175,25);


	 	l3 = new JLabel("NAME ");
	 	l3.setFont(f2);
	 	l3.setForeground(Color.black);
	 	l3.setBounds(100,75,175,25);

	  	l4 = new JLabel("ADDRESS ");
	  	l4.setFont(f2);
	  	l4.setForeground(Color.black);
	  	l4.setBounds(270,75,175,25);

       		l5 = new JLabel("PHONE No.");
   	   	l5.setFont(f2);
	   	l5.setForeground(Color.black);
	   	l5.setBounds(450,75,175,25);

		l6 = new JLabel("AGE ");
	   	 l6.setFont(f2);
		l6.setForeground(Color.black);
		l6.setBounds(620,75,175,25);

		l7 = new JLabel("SKILLS ");
		l7.setFont(f2);
		l7.setForeground(Color.black);
		l7.setBounds(750,75,175,25);

		tf = new JTextField();
		tf.setBounds(510,30,75,25);
		tf.setText(qual);
		tf.setEditable(false);
		tf1 = new JTextField();
		tf1.setBounds(90,140,125,38);
		tf1.setEditable(false);
		tf2 = new JTextField();
		tf2.setBounds(90,220,125,38);
		tf2.setEditable(false);
		tf3 = new JTextField();
		tf3.setBounds(90,300,125,38);
		tf3.setEditable(false);
		tf4 = new JTextField();
		tf4.setBounds(90,380,125,38);
		tf4.setEditable(false);
		tf5 = new JTextField();
		tf5.setBounds(90,460,125,38);
		tf5.setEditable(false);

		tf6 = new JTextField();
		tf6.setBounds(450,140,110,35);
		tf6.setEditable(false);
		tf7 = new JTextField();
		tf7.setBounds(450,220,110,35);
		tf7.setEditable(false);
		tf8 = new JTextField();
		tf8.setBounds(450,300,110,35);
		tf8.setEditable(false);
		tf9 = new JTextField();
		tf9.setBounds(450,380,110,35);
		tf9.setEditable(false);
		tf10 = new JTextField();
		tf10.setBounds(450,460,110,35);
		tf10.setEditable(false);

		tf11 = new JTextField();
		tf11.setBounds(600,140,70,35);
		tf11.setEditable(false);
		tf12 = new JTextField();
		tf12.setBounds(600,220,70,35);
		tf12.setEditable(false);
		tf13 = new JTextField();
		tf13.setBounds(600,300,70,35);
		tf13.setEditable(false);
		tf14 = new JTextField();
		tf14.setBounds(600,380,70,35);
		tf14.setEditable(false);
		tf15 = new JTextField();
		tf15.setBounds(600,460,70,35);
		tf15.setEditable(false);

		tf16 = new JTextField();
		tf16.setBounds(750,140,70,35);
		tf16.setEditable(false);
		tf17 = new JTextField();
		tf17.setBounds(750,220,70,35);
		tf17.setEditable(false);
		tf18 = new JTextField();
		tf18.setBounds(750,300,70,35);
		tf18.setEditable(false);
		tf19 = new JTextField();
		tf19.setBounds(750,380,70,35);
		tf19.setEditable(false);
		tf20 = new JTextField();
		tf20.setBounds(750,460,70,35);
		tf20.setEditable(false);

		tf21 = new JTextField();
		tf21.setBounds(20,140,50,35);
		tf21.setEditable(false);
		tf22 = new JTextField();
		tf22.setBounds(20,220,50,35);
		tf22.setEditable(false);
		tf23 = new JTextField();
		tf23.setBounds(20,300,50,35);
		tf23.setEditable(false);
		tf24 = new JTextField();
		tf24.setBounds(20,380,50,35);
		tf24.setEditable(false);
		tf25 = new JTextField();
		tf25.setBounds(20,460,50,35);
		tf25.setEditable(false);

		ta1 = new TextArea();
		ta1.setBounds(250,140,140,42);
		ta1.setEditable(false);
		ta2 = new TextArea();
		ta2.setBounds(250,220,140,42);
		ta2.setEditable(false);
		ta3 = new TextArea();
		ta3.setBounds(250,300,140,42);
		ta3.setEditable(false);
		ta4 = new TextArea();
		ta4.setBounds(250,380,140,42);
		ta4.setEditable(false);
		ta5 = new TextArea();
		ta5.setBounds(250,460,140,42);
		ta5.setEditable(false);

		back = new JButton(" BACK ");
		back.setBounds(260,550,100,25);

		exit = new JButton(" EXIT ");
		exit.setBounds(640,550,100,25);

		back.addActionListener(this);
		exit.addActionListener(this);

		back.setMnemonic('B');
		exit.setMnemonic('X');

	  	  p=new JPanel();
	   	 p.setLayout(null);

	  	  p.add(l);p.add(l1);p.add(l2);p.add(l3);p.add(l4);p.add(l5);p.add(l6);
	 	   p.add(l7);add(tf);
	 	   p.add(ta1);p.add(ta2);p.add(ta3);p.add(ta4);p.add(ta5);
	  	  p.add(tf1);p.add(tf2);p.add(tf3);p.add(tf4);p.add(tf5);p.add(tf6);
	  	  p.add(tf7);p.add(tf8);p.add(tf9);p.add(tf10);p.add(tf11);p.add(tf12);
	  	  p.add(tf13);p.add(tf14);p.add(tf15);p.add(tf16);p.add(tf17);p.add(tf18);
	  	  p.add(tf19);p.add(tf20);p.add(tf21);p.add(tf22);p.add(tf23);p.add(tf24);
	  	  p.add(tf25);
	  	  p.add(back);
	    	  p.add(exit);

		Color c= new Color(159,210,245);
	 	p.setBackground(c);
		getContentPane().add(p);
		setSize(1024,800);
		setVisible(true);

		addWindowListener(new WindowAdapter()
		{
		 	public void windowClosing(WindowEvent e)
		 	{
				System.exit(0);
		 	}
		});
	}

	public static void main(String asd[])
	{
		new Srh_Result("be");
		Search s;
	}

	public void actionPerformed(ActionEvent ae)
    	{
	 	Object o=ae.getSource();
		if(o==exit)
		{
		 	dispose();
		 	System.exit(0);
		}
		else
		if(o==back)
		{
			dispose();
		}
	 }

}
