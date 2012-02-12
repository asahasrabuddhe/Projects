import java.awt.Color;
import java.awt.Font;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

/*
 * Filename: SearchScreen.java | Date: 01-05-2010 | Time: 20:51
 * Size: 2167 bytes
 *
 * This class allows the user to input the criteria for searching.
 *
 * @author Sai Compusys
 */
class SearchScreen extends JFrame implements ActionListener
{
	JLabel l1,l2;
	JButton b1,b2;
	JTextField tf1;
	JPanel p;

	/* SearchScreen() - Constructor - Initializes the SearchForm and sets up TextFields
	 * and Buttons for allowing user to input the criteria to search.
	 *
	 */
	public SearchScreen()
	{
		setTitle(" Search Form ");
        l1=new JLabel(" SEARCH FOR CANDIDATE ");
        l1.setFont(new Font ("Monotype Corsiva",Font.BOLD,30));
        l1.setForeground(Color.black);
        l1.setBounds(290,80,800,120);

        l2=new JLabel(" HIGHER QUALIFICATION ");
        l2.setFont(new Font ("Monotype Corsiva",Font.ITALIC,18));
        l2.setForeground(Color.red);
        l2.setBounds(200,260,700,120);

        tf1=new JTextField();
        tf1.setBounds(460,300,100,30);

        b1=new JButton("Search..");
        b1.setBounds(270,400,100,30);

        b2=new JButton("Cancel..");
        b2.setBounds(550,400,100,30);

		p=new JPanel();
        p.setLayout(null);
        p.add(l1);
        p.add(l2);
        p.add(tf1);
        p.add(b1);
        p.add(b2);

        b1.addActionListener(this);
        b2.addActionListener(this);

	    b1.setMnemonic('s');
        b2.setMnemonic('c');

        getContentPane().add(p);
        p.setBackground(new Color(159,210,245));

        setSize(1024,800);
        setVisible(true);

	}

	/* actionPerformed() - Responds to the various ActionEvents taking place in the
	 * program.
	 *
	 * @param ae Contains the details about the ActionEvent that just took place.
	 */
	public void actionPerformed(ActionEvent ae)
	{
		Object o = ae.getSource();
		if(o == b1)
		{
			new SearchResult(tf1.getText());
		}
		else if(o == b2)
		{
			dispose();
		}

	 }
}
