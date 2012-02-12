import java.awt.Color;
import java.awt.Font;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;

/*
 * Filename: MainWindow.java | Date: 01-05-2010 | Time: 20:15
 * Size: 2524 bytes
 *
 * This class designs the basic screen and interface of the Resume Management
 * System.
 *
 * @author Sai Compusys
 */

public class MainScreen extends JFrame implements ActionListener
{

	JButton b1,b2,b3;
	JLabel l1,l2;
	JPanel pTop;
	JFrame jf;
	boolean opened;

	/* MainScreen() - Constructor - Initializes the MainScreen of the Resume Management
	 * System and also desigs the basic layout of Labels, Buttons and Colors.
	 *
	 */
	public MainScreen()
	{
		super(" Main Screen");

		l1 = new JLabel(" RESUME MANAGEMENT SYSTEM ");
		l1.setFont(new Font("Monotype Corsiva",Font.BOLD,30));
		l1.setForeground(Color.red);
		l1.setBounds(150,50,750,50);

		l2 = new JLabel("..Where u can store your resume!!!");
		l2.setFont(new Font("Georgia",Font.BOLD,22));
		l2.setForeground(Color.red);
		l2.setBounds(180,300,570,100);

		pTop = new JPanel();
		b1=new JButton(" UPLOAD RESUME ");
		b1.setBounds(250,250,150,35);
		b1.addActionListener(this);

		b2=new JButton(" SEARCH ");
		b2.setBounds(425,250,110,35);
		b2.addActionListener(this);

		b3=new JButton(" EXIT ");
		b3.setBounds(425,450,110,35);
		b3.addActionListener(this);

		b1.setMnemonic('r');
		b2.setMnemonic('s');
		b3.setMnemonic('e');

		pTop.setLayout(null);
		pTop.add(l1);
		pTop.add(l2);
		pTop.add(b1);
		pTop.add(b2);
		pTop.add(b3);

		getContentPane().add(pTop);

		setSize(800,600);
		setLocation(100,100);
		setVisible(true);

		addWindowListener(new WindowAdapter()
		{
				public void windowClosing(WindowEvent e)
				{
						System.exit(0);
				}
		});

   	}
	/* actionPerformed() - Responds to various ActionEvents taking place in
	 * the program.
	 *
	 * @param ae - Contains information about the ActionEvent that just took place.
	 *
	 */
	public void actionPerformed(ActionEvent ae)
	{
		Object o = ae.getSource();
		if(o == b3)
		{
			dispose();
		}
		else if(o == b1)
	 	{
			try
			{
				new DataParserUploader();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		else if(o == b2)
		{
			try
			{
				new SearchScreen();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
	}
}
