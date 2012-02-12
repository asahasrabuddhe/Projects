/*
 * @(#)StudentInfoApp.java	23/04/2010 	<Last Updated 24/04/2010>
 *
 * Basic implementation of JDBC using Access Database.
 *
 * Handles the Database Operations like Selecting, Inserting and Deleting data. Also manages connections with the database.
 *
 * Coded by Ajitem 'bZk' Sahasrabuddhe
 */

package ajitem.studentinfo;

import java.util.ArrayList;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StudentInfoSQL
{
      // arraylist used to store StudentInfo objects
	private ArrayList <StudentInfo> studentList;

	private Connection con;
     // constructor
	public StudentInfoSQL()
		studentList = new ArrayList <StudentInfo> ();
		initConn();
	}

      // method used to establish connection with DB
	public void initConn()
	{
		try
		{
			// load driver
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

                  // establishing connection
			con = DriverManager.getConnection("jdbc:odbc:bzk");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

      // method used to search Student against "name" provided
	public ArrayList searchName(String n)
	{
		try
		{
			String sql = "SELECT * FROM StudentInfo WHERE name=?";

			// Create a statement
 			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,n);

			// execute the statement
			ResultSet rs = ps.executeQuery();

                  String name = "";

                  int rollno = 0;
                  int m1 = 0;
                  int m2 = 0;
                  int m3 = 0;
                  int m4 = 0;
                  int m5 = 0;

			// process resultset
			while(rs.next())
			{
                rollno = rs.getInt("rollno");
                name = rs.getString("name");
                m1 = rs.getInt("m1");
                m2 = rs.getInt("m2");
                m3 = rs.getInt("m3");
                m4 = rs.getInt("m4");
                m5 = rs.getInt("m5");

				//Create a StudentInfo object
				StudentInfo student = new StudentInfo(rollno, name, m1, m2, m3, m4, m5);

				//Add the student object to array list
				studentList.add(student);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}

		return studentList;

	}

	public void saveStudent(StudentInfo student)
	{
		try
		{
			String sql = "INSERT INTO StudentInfo (rollno, name, m1, m2, m3, m4, m5) VALUES (?,?,?,?,?,?,?) ";

			// Create a statement
 			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, student.getRollNo());
			ps.setString(2, student.getName());
			ps.setInt(3, student.getMarks(1));
			ps.setInt(4, student.getMarks(2));
			ps.setInt(5, student.getMarks(3));
			ps.setInt(6, student.getMarks(4));
			ps.setInt(7, student.getMarks(5));

			// execute statement
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	public int removeStudent(String name)
	{
            // used to determine how many records deleted
            int no = 0;

		try
		{
			String sql = "DELETE FROM StudentInfo WHERE name = ?";

			// Create a statement
 			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);

			// execute the statement
			no = ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}

            return no;
	}

	protected void finalize()
	{
		try
		{
           if (con != null)
           {
			  con.close();
           }
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			con = null;
		}
	}

}