import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.applet.*;
import java.io.*;

public class MainScreen extends JFrame implements ActionListener
{

	JButton b1,b2,b3;
	JLabel l1,l2;
	JPanel pTop;
	JFrame jf;
	JTextArea txtfile;
	boolean opened;
	String filename;

	public MainScreen()
	{
		super(" Main Screen");

		l1 = new JLabel(" RESUME MANAGEMENT SYSTEM ");
		Font f1 = new Font("Monotype Corsiva",Font.BOLD,30);
		l1.setFont(f1);
		l1.setForeground(Color.red);
		l1.setBounds(150,50,750,50);


		l2 = new JLabel("..Where u can store your resume!!!");
		Font f2 = new Font("Georgia",Font.BOLD,22);
		l2.setFont(f2);
		l2.setForeground(Color.red);
		l2.setBounds(180,300,570,100);
		filename=null;

		pTop = new JPanel();
		b1=new JButton("UPLOAD RESUME ");
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

	public void actionPerformed(ActionEvent ae)
	{
		Object o = ae.getSource();
		if(o==b3)
		{
			dispose();
		}
		else
		if(o==b1)
	 	{
			openFile();
		}
		else if(o==b2)
		{
			try
			{
				new Search();
			}
			catch(Exception e)
			{
				System.out.println("EXCEPTION IN SEARCH INFORMATION ");
			}
		}
	}

	public void openFile()
	{

		JFileChooser ch = new JFileChooser();
		ch.setCurrentDirectory(new File("."));
		ch.setFileFilter(new  javax.swing.filechooser.FileFilter()
	    	{
	    		public boolean accept(File f)
	        		{
	              		return f.isDirectory()
	               		|| f.getName().toLowerCase().endsWith(".txt");
	        		}
			public String getDescription()
	       		{
	     	      		 return "Text files";
	        		}
	    	});

		int result = ch.showOpenDialog(new JPanel());
		if(result == JFileChooser.APPROVE_OPTION)
		{
			filename = String.valueOf(ch.getSelectedFile());
			setTitle(filename);
			opened=true;
			FileReader fr;
			BufferedReader br;

			try
			{
				fr=new FileReader (filename);
				br=new BufferedReader(fr);
				String s;

				while((s=br.readLine())!=null)
				{
					txtfile.append(s);
					txtfile.append("\n");
				}
				fr.close();
				Parsing.Parse(filename);
			}

			catch(FileNotFoundException ex)
	        {
				JOptionPane.showMessageDialog(this,"Requested file not found", "Error Dialog box", JOptionPane.ERROR_MESSAGE);
			}

			 catch(Exception ex)
	        {
	      			System.out.println(ex);
	        }
		}
	 }

}
