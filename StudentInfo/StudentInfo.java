package ajitem.studentinfo;
/**
 * The class StudentInfo acts a data module for the StudentInfo Application. It holds all the data related
 * to a student either input by the user or retrived from the database. A typical StudentInfo object will
 * contain the name of the student, his/her roll number and marks in five corresponding subjects.
 *
 * @author      Ajitem 'bZk' Sahasrabuddhe <bZk@live.in>
 * @version     2010.0423
 */

public class StudentInfo
{
	private String name;
	private int rollNumber;
	private double marks[5];

      /**
       * Initializes a new object of the StudentInfo class. Name is blank and the Roll Number and marks of all
       * subjects are set to -1.
       */
      public StudentInfo()
      {
         name = "";

         rollNumber = -1;
         for(int i = 0; i <= 4; i++)
         {
			 marks[i] = -1;
		 }
      }

    /**
     * Constructs a new StudentInfo object by accepting the values of Roll Number, Name and Marks of five subjects
     * of a student.
     *
     * @param	rollNumber
     * 			The Roll Number of the student.
     *
     * @param	name
     * 			A {@ code String} containing the name of the Student.
     *
     * @param	marks1
     * 			Marks of First Subject of the Student.
     * @param	marks2
     * 			Marks of Second Subject of the Student.
     * @param	marks3
     * 			Marks of Third Subject of the Student.
     * @param	marks4
     * 			Marks of Fourth Subject of the Student.
     * @param	marks5
     * 			Marks of Fifth Subject of the Student.
     */
	public StudentInfo(int rollNumber, String name, double marks1, double marks2, double marks3, double marks4, double marks5)
	{
        this.rollNumber = rollNumber;
        this.name = name;
        marks[0]= marks1;
        marks[1] = marks2;
        marks[2] = marks3;
        marks[3] = marks4;
        marks[4] = marks5;
	}

    /**
	 * Explicitly sets the the roll number of the student in the object.
	 * of a student.
	 *
	 * @param	rollNumber
	 * 			The Roll Number of the student.
	 *
     */
	public void setRollNumber(int rollNumber)
	{
		this.rollNumber = rollNumber;
	}

    /**
	 * Explicitly sets the name of the student in the object.
	 * of a student.
	 *
	 * @param	name
	 * 			A {@ code String} containing the name of the Student.
	 *
     */
	public void setName(String name)
	{
		this.name = name;
	}

	/**
	 * Explicitly sets the marks of one of the five subjects of the students depending upon the index of the subject passed.
	 *
	 * @param	index
	 * 			An {@code Integer} specifying the index of the subject whose marks are to be set.
	 *
	 * @param	marks
	 * 			Actual values of marks that are to be set corresponding to the index.
	 *
	 * @throws	ArrayIndexOutOfBoundsException
	 *			If the index is not in the range of 0 to 4.
	 */
	public void setMarks(int index, double marks) throws ArrayIndexOutOfBoundsException
	{
		try
		{
			this.marks[index] = marks;
		}
		catch(ArrayIndexOutOfBoundsException aE)
		{
			System.err.println(aE);
			System.out.println("Invalid Index Specified !");
			throw aE;
		}
	}

      // getters
	public int getRollNo()
	{
		return(rollno);
	}
	public String getName()
	{
		return(name);
	}

	public int getMarks(int n)
	{
		switch(n)
		{
			case 1:
				return(m1);
			case 2:
				return(m2);
			case 3:
				return(m3);
			case 4:
				return(m4);
			case 5:
				return(m5);
		}
		return(-1);
	}
}