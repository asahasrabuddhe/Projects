/*
 * @(#)StudentInfoApp.java	23/04/2010 	<Last Updated 24/04/2010>
 *
 * Basic implementation of JDBC using Access Database.
 *
 * Maintains all the data related to a Student.
 *
 * Coded by Ajitem 'bZk' Sahasrabuddhe
 */

package ajitem.studentinfo;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.Container;
import java.awt.FlowLayout;

import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;


import ajitem.studentinfo.StudentInfo;
import ajitem.studentinfo.StudentInfoSQL;

public class StudentInfoGUI implements ActionListener
{
	ArrayList studentList;
	StudentInfoSQL SQL;
	StudentInfo student;

	//Declare GUI Components
	JFrame myFrame;
	JLabel lRollNo, lName, lm1, lm2, lm3, lm4, lm5;
	JTextField tfRollNo, tfName, tfm1, tfm2, tfm3, tfm4, tfm5;
	JButton bSave, bDelete, bClear, bSearch, bForward, bBack, bExit;

	//recordNumber will be used while navigating with << and >> buttons
	int recordNumber;

	//Constructs the StudentInfoGUI object
	public StudentInfoGUI()
	{
        student = new StudentInfo();

        recordNumber = -1;

		initGUI();

        studentList = new ArrayList();

		SQL = new StudentInfoSQL();
	}

	//Initializes the GUI for our StudentInfoApp
	public void initGUI()
	{
		//Initialize Frame
		myFrame = new JFrame("Student Info");

		Container c = myFrame.getContentPane();
		c.setLayout(new FlowLayout());

		//Initialize Labels
		lRollNo = new JLabel("RollNo");
		lName = new JLabel("Name");
		lm1 = new JLabel("Marks1");
		lm2 = new JLabel("Marks2");
		lm3 = new JLabel("Marks3");
		lm4 = new JLabel("Marks4");
		lm5 = new JLabel("Marks5");

		//Initialize TextFields
		tfRollNo  = new JTextField(20);
		tfName    = new JTextField(20);
		tfm1 = new JTextField(20);
		tfm2   = new JTextField(20);
		tfm3   = new JTextField(20);
		tfm4 = new JTextField(20);
		tfm5 = new JTextField(20);

		//Initialize Buttons
		bSave   = new JButton("Save");
		bDelete = new JButton("Delete");
		bClear  = new JButton("Clear");
		bSearch = new JButton("Search");

		bForward = new JButton(">>");
		bBack    = new JButton("<<");
		bExit    = new JButton("Exit");

		//Add everything on the Container(Frame)
		c.add(lRollNo);
		c.add(tfRollNo);

		c.add(lName);
		c.add(tfName);

		c.add(lm1);
		c.add(tfm1);

		c.add(lm2);
		c.add(tfm2);

		c.add(lm3);
		c.add(tfm3);

		c.add(lm4);
		c.add(tfm4);

		c.add(lm5);
		c.add(tfm5);

		c.add(bSave);
		c.add(bDelete);
		c.add(bClear);
		c.add(bSearch);

		c.add(bBack);
		c.add(bForward);

		c.add(bExit);

		//Activate the buttons by placing ActionListeners on them
		bSave.addActionListener(this);
		bDelete.addActionListener(this);
		bClear.addActionListener(this);
		bSearch.addActionListener(this);
		bForward.addActionListener(this);
		bBack.addActionListener(this);
		bExit.addActionListener(this);

		//Define Frame properties
		myFrame.setSize(290,375);
        myFrame.setResizable(false);
		myFrame.setVisible(true);

	}

	//Defines responses with respect to buttons clicked
	public void actionPerformed (ActionEvent event )
	{

		if (event.getSource () == bSave)
		{
                  saveStudent();

                  clear();
            }

		else if (event.getSource() == bDelete)
		{
                  deleteStudent();

                  clear();
            }


		else if (event.getSource() == bSearch)
		{
                  searchName();
            }

		else if (event.getSource() == bForward)
		{
                  displayNextRecord();
            }

		else if (event.getSource() == bBack)
		{
                 displayPreviousRecord();
            }

		else if (event.getSource() == bClear)
		{
                  clear();
            }

		else if (event.getSource() == bExit)
		{
			System.exit(0);
		}

	}

  //Saves entered information with the help of StudentInfoSQL object
  public void saveStudent()
  {
	  try
	  {
	  	student.setRollNumber( Integer.parseInt( tfRollNo.getText() ) );
	  	student.setName( tfName.getText() );
	  	student.setMarks( 0, Integer.parseInt( tfm1.getText() ) );
	  	student.setMarks( 1, Integer.parseInt( tfm2.getText() ) );
	  	student.setMarks( 2, Integer.parseInt( tfm3.getText() ) );
	  	student.setMarks( 3, Integer.parseInt( tfm4.getText() ) );
	  	student.setMarks( 4, Integer.parseInt( tfm5.getText() ) );
	  }
	  catch(NumberFormatException nFE)
	  {
		  System.err.println(nFE);
		  JOptionPane.showMessageDialog(null, "Please enter proper value for marks.");
		  break;
	  }
	  if( student.getName().equals("") )
	  {
	  	JOptionPane.showMessageDialog(null, "Please enter person name.");
	  }
	  else
	  {
		SQL.saveStudent(student);
		JOptionPane.showMessageDialog(null, "Record added");
	  }
  }

  //Deletes current record with the help of StudentInfoSQL object
  public void deleteStudent(){

	String name = tfName.getText();

	if(name.equals(""))
	{
		JOptionPane.showMessageDialog(null,"Please enter person name to delete.");
	}
	else
	{
		int no = SQL.removeStudent(name);
		JOptionPane.showMessageDialog(null, no + " Record(s) deleted.");
	}
  }

   //Searches for the entered name with the help of StudentInfoSQL object
   public void searchName()
   {

	name = tfName.getText();

	studentList.clear();

	recordNumber = 0;

	if(name.equals(""))
	{
		JOptionPane.showMessageDialog(null,"Please enter person name to search.");
	}
	else
	{
		studentList = SQL.searchName(name);

		if(studentList.size() == 0)
		{
			JOptionPane.showMessageDialog(null, "No record found.");
		}
		else
		{
			StudentInfo student = (StudentInfo) studentList.get(recordNumber);

			tfRollNo.setText(""+student.getRollNo());
			tfName.setText(student.getName());
			tfm1.setText(""+student.getMarks(1));
			tfm2.setText(""+student.getMarks(2));
			tfm3.setText(""+student.getMarks(3));
			tfm4.setText(""+student.getMarks(4));
			tfm5.setText(""+student.getMarks(5));
		}
	}

  }

	//In case of multiple returns of search, used to see the next record
	public void displayNextRecord()
	{

		recordNumber++;

		if(recordNumber >= studentList.size())
		{
			JOptionPane.showMessageDialog(null, "You have reached at end of search results");

			bForward.setEnabled(false);
			bBack.setEnabled(true);

	        recordNumber -- ;
		}
		else
		{
			bBack.setEnabled(true);
			StudentInfo student = (StudentInfo) studentList.get(recordNumber);

			tfRollNo.setText(""+student.getRollNo());
			tfName.setText(student.getName());
			tfm1.setText(""+student.getMarks(1));
			tfm2.setText(""+student.getMarks(2));
			tfm3.setText(""+student.getMarks(3));
			tfm4.setText(""+student.getMarks(4));
			tfm5.setText(""+student.getMarks(5));
		}
	}

	//In case of multiple returns of search, used to see the previous record
	public void displayPreviousRecord()
	{
		recordNumber--;

		if(recordNumber < 0 )
		{
			JOptionPane.showMessageDialog(null, "You have reached at begining of search results");

			bForward.setEnabled(true);
			bBack.setEnabled(false);

	        recordNumber++;
		}
		else
		{
			bForward.setEnabled(true);
			StudentInfo student = (StudentInfo) studentList.get(recordNumber);

			tfRollNo.setText(""+student.getRollNo());
			tfName.setText(student.getName());
			tfm1.setText(""+student.getMarks(1));
			tfm2.setText(""+student.getMarks(2));
			tfm3.setText(""+student.getMarks(3));
			tfm4.setText(""+student.getMarks(4));
			tfm5.setText(""+student.getMarks(5));
		}
	}

	//Clears all TextFields
	public void clear()
	{
		tfRollNo.setText("");
		tfName.setText("");
		tfm1.setText("");
		tfm2.setText("");
		tfm3.setText("");
		tfm4.setText("");
		tfm5.setText("");

	    recordNumber = -1;
		studentList.clear();
		bForward.setEnabled(true);
		bBack.setEnabled(true);
	}
}
