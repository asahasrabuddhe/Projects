import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class Search extends JFrame implements ActionListener
{

	JLabel l1,l2;
	JButton b1,b2;
	JTextField tf1;
	JPanel p;

	Search()
	{
		setTitle(" Search Form ");
		l1=new JLabel(" SEARCH FOR CANDIDATE ");
	 	Font f1=new Font ("Monotype Corsiva",Font.BOLD,30);
		l1.setFont(f1);
		l1.setForeground(Color.black);
		l1.setBounds(290,80,800,120);


		l2=new JLabel(" HIGHER QUALIFICATION ");
		Font f2=new Font ("Monotype Corsiva",Font.ITALIC,18);
		l2.setFont(f2);
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
		p.add(b1);p.add(b2);
		b1.addActionListener(this);
		b2.addActionListener(this);

	     b1.setMnemonic('s');
	  	 b2.setMnemonic('c');

		getContentPane().add(p);
    		Color c= new Color(159,210,245);
		p.setBackground(c);

		setSize(1024,800);
		setVisible(true);

	}
	/*public static void main(String asd[])
	{
		new Search();
	}*/
	public void actionPerformed(ActionEvent ae)
	{
		Object o=ae.getSource();
		if(o==b1)
		{
			new Srh_Result(tf1.getText());
		}
		else
		if(o==b2)
		{
			dispose();
		}

	 }
}
