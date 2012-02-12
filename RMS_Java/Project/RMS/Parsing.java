import java.io.*;
import java.util.*;
import java.util.StringTokenizer;
import javax.swing.*;
import java.sql.*;
import java.lang.*;

class Parsing
{
	public static void Parse(String filename)
	{

		int i,ltok=0;
		String buffer,s1=" ",s2=" ";
		String tstr[]=new String[500];
		String tstr2[]=new String[500];
		char data[]= new char[5000];

		String line[]=new String[5000];
		String line2[]=new String[5000];
		String token1[]=new String[2000];
		String token2[]=new String[2000];
		String ref[]={"Name","Address","Ph_no","Skills","Qualification","DOB","Age","Gender","Citizenship","Marital_Status"," "};
		String qref[]={"SSC","Year of Passing_SSC","Percentage_SSC","Board/University_SSC","HSSC","Year of Passing_HSSC","Percentage_HSSC","Board/University_HSSC","BSc","Year of Passing_BSc","Percentage_BSc","Board/University_BSc","MCA","Board/University_MCA"," "};
		int flag=0,j=1,k=0;

		try
		{
			FileReader fread = new FileReader(filename);
			int chread = fread.read(data);
			buffer=new String(data,0,chread);
			token1=buffer.split("\n");
			token2=buffer.split("\n");
			for(i=0;i<token1.length;i++)
			{
				StringTokenizer st = new StringTokenizer(token1[i]);
				while(st.hasMoreTokens())
				{
					line[ltok]=st.nextToken();
					if(!line[ltok].equalsIgnoreCase(":"))
                    {
			  			if(j<=ref.length)
			  			if(line[ltok].equalsIgnoreCase(ref[j-1]))
						{
						    flag=1;
						    tstr[k]=s1;
						    s1="\0";
						    k++;
						    j++;
						}
						else if(flag==1)
						{
							s1=s1.concat(line[ltok]+" ");
						}
				    }
				    ltok++;
				}

			}

			InsVal(tstr);
			for(i=0;i<token2.length;i++)
			{
				StringTokenizer st = new StringTokenizer(token2[i]);
				while(st.hasMoreTokens())
				{
					line2[ltok]=st.nextToken();
					System.out.println (line2[ltok]);
					if(line2[ltok].equalsIgnoreCase("DOB")){
						st=null;
						break;
					}else if(line2[ltok].equalsIgnoreCase("Qualification"))
					{
						line2[ltok]=st.nextToken();
						if(!line2[ltok].equalsIgnoreCase(":"))
		                {			if(line2[ltok].equalsIgnoreCase("SSC"))
		                			{
										line2[ltok]=st.nextToken();
										if(!line2[ltok].equalsIgnoreCase(":"))
										{
					  						if(j<=qref.length)
					  						if(line2[ltok].equalsIgnoreCase(qref[j-1]))
											{
											    flag=1;
											    tstr2[k]=s2;
											    s2="\0";
											    k++;
											    j++;
											}
											else if(flag==1)
											{
												s2=s2.concat(line2[ltok]+" ");
												System.out.println (s2);
											}

					    				}
									}
								}
							}
							ltok++;

					}
				}
				InsValQ(tstr2);
			}

		catch(FileNotFoundException e)
		{
			System.out.println("FILE NOT FOUND ON UR HARD DRIVE ");
		}
		catch(IOException e)
		{
			System.out.println("INPUT/OUTPUT EXCEPTION ");
		}
		catch(NullPointerException e)
		{
			System.out.println("NULL POINTER EXCEPTION ");
			e.printStackTrace();
		}
		catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("ARRAY INDEX ERROR");
		}
	}
	public static void InsValQ(String []tstr3)
	{
			Connection conn;
			Statement stmt;
			String query1="select SSC,Year of Passing_SSC,Percentage_SSC,Board/University_SSC,HSSC,Year of Passing_HSSC,Percentage_HSSC,Board/University_HSSC,BSc,Year of Passing_BSc,Percentage_BSc,Board/University_BSc,MCA,Board/University_MCA from Qual";

			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			}
			catch(ClassNotFoundException cnfe)
			{
				System.out.println("CLASS NOT FOUND EXCEPTION : ");
				System.out.println(cnfe.getMessage());
			}
			try
			{
				String url="jdbc:odbc:resumeDSN";
				conn = DriverManager.getConnection(url);
				stmt=conn.createStatement();
				for (int i = 0; i<tstr3.length; i++) {
					System.out.println (tstr3[i]);
			    }

				for (int i =16; i<tstr3.length; i++) {
			   		String id=i-3+"";
					String sql1 = "insert into Qual(SSC,Year of Passing_SSC,Percentage_SSC,Board/University_SSC,HSSC,Year of Passing_HSSC,Percentage_HSSC,Board/University_HSSC,BSc,Year of Passing_BSc,Percentage_BSc,Board/University_BSc,MCA,Board/University_MCA) values('"+tstr3[i].trim()+"','"+tstr3[i+1].trim()+"','"+tstr3[i+2].trim()+"','"+tstr3[i+3].trim()+"','"+tstr3[i+4].trim()+"','"+tstr3[i+5].trim()+"','"+tstr3[i+6].trim()+"','"+tstr3[i+7].trim()+"','"+tstr3[i+8].trim()+"','"+tstr3[i+9].trim()+"','"+tstr3[i+10].trim()+"','"+tstr3[i+11].trim()+"','"+tstr3[i+12].trim()+"','"+tstr3[i+13].trim()+"')";
					System.out.println("before saving : " + sql1);
					stmt.executeUpdate(sql1);
				}

				System.out.println("\n\nRECORD INSERTED ");
				System.out.println("\nDATA IS PARSED IN DATABSE");
				System.out.println("\nCONTENTS OF DATABSE ARE :\n");

				ResultSet rs = stmt.executeQuery(query1);

				System.out.println("SSC \t Year of Passing_SSC\t Percentage_SSC\t Board/University_SSC\tHSSC \t Year of Passing_HSSC \t Percentage_HSSC \t Board/University_HSSC \t BSc \t Year of Passing_BSc \t Percentage_BSc \t Board/University_BSc \t MCA \t Board/University_MCA\n");

				while(rs.next())
				{
					String cs1 = rs.getString("SSC");
					String yr1= rs.getString("Yr_of_Passing_SSC");
					String  per1= rs.getString("Percentage_SSC");
					String uni1 = rs.getString("Board/University_SSC");
					String cs2 = rs.getString("HSSC");
					String yr2= rs.getString("Yr_of_Passing_HSSC");
					String  per2= rs.getString("Percentage_HSSC");
					String uni2 = rs.getString("Board/University_HSSC");
					String cs3 = rs.getString("BSc");
					String yr3= rs.getString("Yr_of_Passing_BSc");
					String  per3= rs.getString("Percentage_BSc");
					String uni3 = rs.getString("Board/University_BSc");
					String cs4 = rs.getString("MCA");
					String uni4 = rs.getString("Board/University_MCA");
					System.out.println(cs1+"\t"+yr1+"\t"+per1+"\t"+uni1+"\t"+cs2+"\t"+yr2+"\t"+per2+"\t"+uni2+"\t"+cs3+"\t"+yr3+"\t"+per3+"\t"+uni3+"\t"+cs4+"\t"+uni4);
				}
				stmt.close();
				conn.close();
			}
				catch(SQLException sqlExcep)
			{
				System.out.println("ERROR IN CONNECTION " +sqlExcep.getMessage());
			}
	}

	public static void InsVal(String []tstr1)
	{
			Connection conn;
			Statement stmt;
			String query="select Name,Address,Ph_no,Skills,Qualification,DOB,Age,Gender,Citizenship,Marital_Status from DB";

			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			}
			catch(ClassNotFoundException cnfe)
			{
				System.out.println("CLASS NOT FOUND EXCEPTION : ");
				System.out.println(cnfe.getMessage());
			}
			try
			{
				String url="jdbc:odbc:resumeDSN";
				conn = DriverManager.getConnection(url);
				stmt=conn.createStatement();


				String sql1 = "insert into DB(Name,Address,Ph_no,Skills,Qualification,DOB,Age,Gender,Citizenship,Marital_Status) values('"+tstr1[1].trim()+"','"+tstr1[2].trim()+"','"+tstr1[3].trim()+"','"+tstr1[4].trim()+"','"+tstr1[5].trim()+"','"+tstr1[6].trim()+"','"+tstr1[7].trim()+"','"+tstr1[8].trim()+"','"+tstr1[9].trim()+"','"+tstr1[10]+"')";
				System.out.println("before saving : " + sql1);
				stmt.executeUpdate(sql1);

				System.out.println("\n\nRECORD INSERTED ");
				System.out.println("\nDATA IS PARSED IN DATABSE");
				System.out.println("\nCONTENTS OF DATABSE ARE :\n");

				ResultSet rs = stmt.executeQuery(query);

				System.out.println("Name \t Address \t Ph_no. \t Skills \t Qualification \t DOB \t Age \t Gender \t Citizenship \t Marital_Status \n");

				while(rs.next())
				{
					String nm = rs.getString("Name");
					String add = rs.getString("Address");
					String ph = rs.getString("Ph_no");
					String sk = rs.getString("Skills");
					String ed = rs.getString("Qualification");
					String dob = rs.getString("DOB");
					String age = rs.getString("Age");
					String gen = rs.getString("Gender");
					String city = rs.getString("Citizenship");
					String ms = rs.getString("Marital_Status");
					System.out.println(nm+"\t"+add+"\t"+ph+"\t"+sk+"\t"+ed+"\t"+dob+"\t"+age+"\t"+gen+"\t"+city+"\t"+ms);
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
