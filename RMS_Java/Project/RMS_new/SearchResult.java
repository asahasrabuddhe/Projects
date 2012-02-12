import java.awt.Color;
import java.awt.Font;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

/*
 * Filename: SearchResult.java | Date: 03-05-2010 | Time: 08:07
 * Size: 5540 bytes
 *
 * This class queries the database and returns the values and displays them
 * on the Frame.
 *
 * @author Sai Compusys
 */


 public class SearchResult extends JFrame implements ActionListener
 {
	private ResultSet rs;
	private JScrollPane jSP;
	private JLabel l,l1,l2,l3,l4,l5,l6,l7;
	private JTextField tf,tf1,tf2,tf3,tf4,tf5;
	private JButton back,exit;
	private JTextArea ta1;
	private static int H_POS = 140;
	private JPanel jP;

 	/* SearchResult() - Constructor - Initialises the SearchResult Window and draws
 	 * the basic layout.
 	 *
 	 * @param qual The Qualification with respect to which resumes are to be searched
 	 * and displayed.
 	 */
 	public SearchResult(String qual)
 	{
	 	jSP = new JScrollPane();
	 	jSP.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
		jSP.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

	 	setTitle(" Search Result ");
		l = new JLabel(" SEARCH   RESULT   FOR  ");
		l.setFont(new Font ("Monotype Corsiva",Font.BOLD,20));
		l.setForeground(Color.black);
		l.setBounds(330,10,250,25);

		l1 = new JLabel("QUALIFICATION  :");
		l1.setFont(new Font ("Arial",Font.BOLD,20));
		l1.setForeground(Color.red);
		l1.setBounds(310,30,175,25);

		l2 = new JLabel("ID ");
		l2.setFont(new Font ("Arial",Font.BOLD,15));
		l2.setForeground(Color.black);
		l2.setBounds(20,75,175,25);

		l3 = new JLabel("NAME ");
		l3.setFont(new Font ("Arial",Font.BOLD,15));
		l3.setForeground(Color.black);
		l3.setBounds(100,75,175,25);

		l4 = new JLabel("ADDRESS ");
		l4.setFont(new Font ("Arial",Font.BOLD,15));
		l4.setForeground(Color.black);
		l4.setBounds(270,75,175,25);

		l5 = new JLabel("PHONE No.");
		l5.setFont(new Font ("Arial",Font.BOLD,15));
		l5.setForeground(Color.black);
		l5.setBounds(450,75,175,25);

		l6 = new JLabel("AGE ");
		l6.setFont(new Font ("Arial",Font.BOLD,15));
		l6.setForeground(Color.black);
		l6.setBounds(620,75,175,25);

		l7 = new JLabel("SKILLS ");
		l7.setFont(new Font ("Arial",Font.BOLD,15));
		l7.setForeground(Color.black);
		l7.setBounds(750,75,175,25);

		tf = new JTextField();
		tf.setBounds(510,30,75,25);
		tf.setText(qual);
		tf.setEditable(false);

		back = new JButton(" BACK ");
		back.setBounds(260,550,100,25);

		exit = new JButton(" EXIT ");
		exit.setBounds(640,550,100,25);

		back.addActionListener(this);
		exit.addActionListener(this);

		back.setMnemonic('B');
		exit.setMnemonic('X');

	 	jP = new JPanel();

		jP.setLayout(null);
		jP.setBackground(new Color(159,210,245));
		jP.add(l);
		jP.add(l1);
		jP.add(l2);
		jP.add(l3);
		jP.add(l4);
		jP.add(l5);
		jP.add(l6);
		jP.add(l7);
		jP.add(tf);

		jP.add(back);
		jP.add(exit);

	 	getData(qual);

	 	jSP.getViewport().add(jP);

	 	add(jSP);
	 	setSize(1024,800);
	 	setVisible(true);

	}
	/* getData() - Connects with the database and executes queries for the required data.
	 *
	 * @param qual The Qualification with respect to which data is to be searched for.
	 *
	 */
	public void getData(String qual)
	{
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		try
		{
			Connection con = DriverManager.getConnection("jdbc:odbc:rms");
			PreparedStatement ps = con.prepareStatement("SELECT Id,Name,Address,Ph_no,Age,Skills FROM DB WHERE Qualification = ?");
			ps.setString(1,qual);
			rs = ps.executeQuery();
			while(rs.next())
			{
				showResult();
			}
		}
		catch(Exception ee)
		{
			System.out.println(ee);
		}
		H_POS = 140;
	}
	/* showResult() - Displays records retrived from the database in a proper layout
	 * in the SearchResult Window.
	 *
	 * @exception SQLException on any errors encountered during SQL Operations.
	 */
	public void showResult() throws SQLException
	{
		tf1 = new JTextField();
		tf1.setBounds(90,H_POS,125,38);
		tf1.setEditable(false);
		tf1.setText(rs.getString("Name"));

		tf2 = new JTextField();
		tf2.setBounds(450,H_POS,110,35);
		tf2.setEditable(false);
		tf2.setText(String.valueOf(rs.getInt("Ph_No")));

		tf3 = new JTextField();
		tf3.setBounds(600,H_POS,70,35);
		tf3.setEditable(false);
		tf3.setText(String.valueOf(rs.getInt("Age")));

		tf4 = new JTextField();
		tf4.setBounds(750,H_POS,70,35);
		tf4.setEditable(false);
		tf4.setText(rs.getString("Skills"));

		tf5 = new JTextField();
		tf5.setBounds(20,H_POS,50,35);
		tf5.setEditable(false);
		tf5.setText(String.valueOf(rs.getInt("Id")));

		ta1 = new JTextArea(rs.getString("Address"));
		ta1.setBounds(250,H_POS,140,42);
		ta1.setEditable(false);

		jP.add(tf1);
		jP.add(tf2);
		jP.add(tf3);
		jP.add(tf4);
		jP.add(tf5);
		jP.add(ta1);

		H_POS += 80;
	}
	/* actionPerformed() - Responds to the ActionEvents taking place.
	 *
	 * @param ae It contains the details about the event that just took place.
	 *
	 */
	public void actionPerformed(ActionEvent ae)
	{
		Object o = ae.getSource();

		if(o == exit)
		{
			dispose();
			System.exit(0);
		}
		else
		{
			if(o == back)
			{
				dispose();
			}
		}
	 }
}
