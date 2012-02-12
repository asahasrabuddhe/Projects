import java.sql.*;
class SearchData
{
		Connection conn;
		Statement stmt;
		String query="select * from Parsing_db   where Skills='Java'";

		public SearchData()
		{
			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			}
			catch(ClassNotFoundException cnfe)
			{
				System.out.println("CLASS NOT FOUND EXCEPTION:");
				System.out.println(cnfe.getMessage());
			}
			try
			{
				String url="jdbc:odbc:rms";
				conn = DriverManager.getConnection(url);
				stmt=conn.createStatement();
				stmt.executeQuery("select Name,Address,Phone_no  from Parsing_db where Skills='Java'");

				System.out.println("RECORD SELECTED ");
				ResultSet rs = stmt.executeQuery(query);
				System.out.println("Name\tAddress\tPhoneno. \n");

				while(rs.next())
				{
					String name = rs.getString("Name");
					String add = rs.getString("Address");
					String ph = rs.getString("Phone_no");
					System.out.println("**********************");
					System.out.println(name+"\t"+add+"\t"+ph);
				}
				stmt.close();
				conn.close();
			}
			catch(SQLException sqlExcep)
			{
				System.out.println("ERROR IN CONNECTION " +sqlExcep.getMessage());
			}
		}
	}
