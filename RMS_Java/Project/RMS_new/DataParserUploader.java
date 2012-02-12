import java.io.File;
import java.io.FileNotFoundException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.util.Hashtable;
import java.util.Scanner;
import java.util.StringTokenizer;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

/*
 * Filename: DataParserUploader.java | Date: 01-05-2010 | Time: 20:36
 * Size: 5937 bytes
 *
 * This class parses the text value and separates the key/value pair and
 * also uploads the same to the database.
 *
 * @author Sai Compusys
 */

public class DataParserUploader
{
	private File fFile;
  	private Hashtable <String, String> ht;
  	private String DBFields = "Name Address Ph_no Skills Qualification DOB Age Gender Citizenship Martial_Status";
  	private String QualFields = "SSC Yr_of_Passing_SSC Percentage_SSC Board_SSC HSSC Yr_of_Passing_HSSC Percentage_HSSC Board_HSSC GRAD Yr_of_Passing_GRAD Percentage_GRAD Board_GRAD PG Board/University";

	/* DataParserUploader - Constructor - Initializes the DataParser part of the class
	 * and prompts user to choose a file.
	 *
	 * @exception FileNotFoundException when the selected file is not found.
	 */
	public DataParserUploader() throws FileNotFoundException
  	{
		JFileChooser ch = new JFileChooser();
		ch.setCurrentDirectory(new File("."));
		ch.setFileFilter(new  javax.swing.filechooser.FileFilter()
		{
			public boolean accept(File f)
			{
				return f.isDirectory()|| f.getName().toLowerCase().endsWith(".txt");
			}
			public String getDescription()
			{
			 	return "Text files";
			}
		});

		ht = new Hashtable <String, String> ();
		int result = ch.showOpenDialog(new JPanel());
		if(result == JFileChooser.APPROVE_OPTION)
		{
	    	fFile = new File(ch.getSelectedFile().toString());
	    	processLineByLine();
	    	uploadData();
	    	JOptionPane.showMessageDialog(null, "Resume File Parsed Successfully and stored in the database.", "File Parser", JOptionPane.INFORMATION_MESSAGE);
		}
	  }

  	/* processLineByLine() - Breaks the selected file into separate lines and passes each line
  	 * one by one for furthur processing.
  	 *
  	 * @exception FileNotFoundException when the selected file is not found.
  	 */
  	private void processLineByLine() throws FileNotFoundException
  	{
		Scanner scanner = new Scanner(fFile);
  	  	try
  	  	{
			//first use a Scanner to get each line
      		while ( scanner.hasNextLine() )
      		{
        		processLine( scanner.nextLine() );
      		}
    	}
    	finally
    	{
      		//ensure the underlying stream is always closed
      		scanner.close();
    	}
  	}

	/* processLine() - Process each line received from processLineByLine() to separate
	 * the key/value pair and store them in a Hashtable for furthur processing.
	 *
	 * @param aLine - A String containing a single line from the source text file.
	 */
  	private void processLine(String aLine)
  	{
    	//use a second Scanner to parse the content of each line
    	Scanner scanner = new Scanner(aLine);
    	scanner.useDelimiter(":");
    	int j = 0;
    	if ( scanner.hasNext() )
    	{
			String name = scanner.next();
    	  	String value = scanner.next();
    	  	ht.put(name, value);
    	}
    	else
    	{
      		System.out.println("Empty or invalid line. Unable to process.");
    	}
    	//(no need for finally here, since String is source)
    	scanner.close();
  	}

	/* uploadData() - Connects to the database, and stores data read from the text file into
	 * the database.
	 *
	 */
  	private void uploadData()
  	{
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		}
		catch(Exception ee)
		{
			System.out.println(ee);
		}
		try
		{
			Connection con = DriverManager.getConnection("jdbc:odbc:rms");

			PreparedStatement ps1 = con.prepareStatement("INSERT INTO DB (Name, Address, Ph_no, Skills, Qualification, DOB, Age, Gender, Citizenship, Martial_Status) VALUES (?,?,?,?,?,?,?,?,?,?)");
			StringTokenizer st = new StringTokenizer(DBFields);
			ps1.setString(1, ht.get( st.nextToken() ).trim() );
			ps1.setString(2, ht.get( st.nextToken() ).trim() );
			ps1.setInt(3, Integer.parseInt( ht.get( st.nextToken() ).trim() ) );
			ps1.setString(4, ht.get( st.nextToken() ).trim() );
			ps1.setString(5, ht.get( st.nextToken() ).trim() );
			ps1.setString(6, ht.get( st.nextToken() ).trim() );
			ps1.setInt(7, Integer.parseInt( ht.get( st.nextToken() ).trim() ) );
			ps1.setString(8, ht.get( st.nextToken() ).trim() );
			ps1.setString(9, ht.get( st.nextToken() ).trim() );
			ps1.setString(10, ht.get( st.nextToken() ).trim() );

			PreparedStatement ps2 = con.prepareStatement("INSERT INTO Qual (SSC, Yr_of_Passing_SSC, Percentage_SSC, Board_SSC, HSSC, Yr_of_Passing_HSSC, Percentage_HSSC, Board_HSSC, GRAD, Yr_of_Passing_GRAD, Percentage_GRAD, Board_GRAD, PG, University) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			StringTokenizer st1 = new StringTokenizer(QualFields);
			ps2.setString(1, ht.get( st1.nextToken() ).trim() );
			ps2.setInt(2, Integer.parseInt( ht.get( st1.nextToken() ).trim() ) );
			ps2.setInt(3, Integer.parseInt( ht.get( st1.nextToken() ).trim() ) );
			ps2.setString(4, ht.get( st1.nextToken() ).trim() );
			ps2.setString(5, ht.get( st1.nextToken() ).trim() );
			ps2.setInt(6, Integer.parseInt( ht.get( st1.nextToken() ).trim() ) );
			ps2.setInt(7, Integer.parseInt( ht.get( st1.nextToken() ).trim() ) );
			ps2.setString(8, ht.get( st1.nextToken() ).trim() );
			ps2.setString(9, ht.get( st1.nextToken() ).trim() );
			ps2.setInt(10, Integer.parseInt( ht.get( st1.nextToken() ).trim() ) );
			ps2.setInt(11, Integer.parseInt( ht.get( st1.nextToken() ).trim() ) );
			ps2.setString(12, ht.get( st1.nextToken() ).trim() );
			ps2.setString(13, ht.get( st1.nextToken() ).trim() );
			ps2.setString(14, ht.get( st1.nextToken() ).trim() );

			ps1.executeUpdate();
			ps2.executeUpdate();
		}
		catch(Exception eee)
		{
			System.out.println(eee);
		}
	}
}

