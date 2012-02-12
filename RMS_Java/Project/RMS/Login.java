import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class Login extends JFrame implements ActionListener
{
	JLabel l1,l2,l3;
	JTextField t1;
	JPasswordField t2;
	JButton b1,b2;
	JPanel p;
	Color c;

	Login()
	{
		setTitle(" Login Screen");
		l1=new JLabel(" RESUME MANAGEMT SYSTEM !! ");
		Font f=new Font ("Monotype Corsiva",Font.BOLD,30);
		l1.setFont(f);
		l1.setForeground(Color.black);
		l1.setBounds(250,80,510,80);

l2=new JLabel("USER NAME");
		Font f1=new Font ("Monotype Corsiva",Font.BOLD,20);
		l2.setFont(f1);
		l2.setForeground(Color.black);
		l2.setBounds(235,225,150,40);
		t1=new JTextField();
		t1.setBounds(385,225,150,40);

l3=new JLabel("PASSWORD");
		Font f2=new Font ("Monotype Corsiva",Font.BOLD,20);
		l3.setFont(f2);
		l3.setForeground(Color.black);
		l3.setBounds(235,325,150,40);
		t2=new JPasswordField();
		t2.setBounds(385,325,150,40);

b1=new JButton("ENTER ");
		b1.setBounds(250,450,110,35);
		b1.addActionListener(this);
		b2=new JButton(" EXIT ");

b2.setBounds(425,450,110,35);
		b2.addActionListener(this);
b1.setMnemonic('e');
		b2.setMnemonic('x');

		p=new JPanel();
		p.setLayout(null);
p.add(l1);
		p.add(l2);p.add(t1);

p.add(l3);p.add(t2);
		p.add(b1);p.add(b2);
		getContentPane().add(p);
    		Color c= new Color(255,0,0);

p.setBackground(c);
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

	public static void main(String args[])
	{
		new Login();
	}
	public void actionPerformed(ActionEvent ae)
	{
		Object o=ae.getSource();
		if(o==b2)
		{
			 dispose();
		}

else
		if(o==b1)
	 	{
	 		 String s1=t1.getText().trim();
	 		 String s2=t2.getText().trim();

			 if((s1.length()==0)||(s2.length()==0))
	 		 {
JOptionPane.showMessageDialog(null,"Empty Text Field are not allowed ","Error",JOptionPane.ERROR_MESSAGE);
			 }
			 else
{ 									if((s1.equalsIgnoreCase("user")) && (s2.equalsIgnoreCase("password")))
			 	{
JOptionPane.showMessageDialog(null," WelCome  "+s1,"Start", JOptionPane.INFORMATION_MESSAGE);
		            		new MainScreen();
		            		dispose();
				}
			 	else
JOptionPane.showMessageDialog(null,"Invalid UserName/Password ", "Error", JOptionPane.ERROR_MESSAGE);
	 	     }
	 	}
	}
}