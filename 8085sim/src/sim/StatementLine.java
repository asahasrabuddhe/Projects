/*
 * @(#)StatementLine.java   29/09/2010
 *
 * Copyright 2010 Ajitem 'bZk' Sahasrabuddhe. All rights reserved.
 */

package sim;

/**
 *
 *
 * @author      Ajitem 'bZk' Sahasrabuddhe <bZk@live.in>
 */

public class StatementLine
{
	private String label,op1,op2,opc,tmp,str;
	private int c=0;

        public void separator()
	{
            int p=0,j,i;
        label=null;opc=null;op1=null;op2=null;
	boolean labpresent=false;
	if(str.indexOf(';')>=0)
	{
		c=1;
		str=str.substring(0,str.indexOf(';'));
	}
		for(i=0;i<str.length();i++)
		{
			tmp="";
			for(j=i;j<str.length();j++)
			{
				if(str.charAt(j)!=' '&&str.charAt(j)!=','&&str.charAt(j)!=':')
				{
					tmp=tmp+str.charAt(j);
				}
				else
				{
					if(str.charAt(j)==':') labpresent=true;
					break;
				}
			}
			i=j;
			if(!tmp.equals(""))
			{
				p++;
				switch(p)
				{
					case 1: if(labpresent) label=tmp;
						else
						{ opc=tmp; p++; }
						break;
					case 2: opc=tmp; break;
					case 3: op1=tmp; break;
					case 4: op2=tmp; break;
				}
			}
		}
	}

	public void split(String s)
	{
		str=s;
		separator();
	}
	public String getLabel()
	{
		return label;
	}
	public String getOpcode()
	{
		return opc;
	}
	public String getOp1()
	{
		return op1;
	}
	public String getOp2()
	{
		return op2;
	}
	public boolean labelPresent()
	{
		if(label==null) return false;
		else return true;
	}
	public int numberOfOperands()
	{
		if(op1==null&&op2==null) return 0;
		else if(op1!=null&&op2!=null) return 2;
		else return 1;
	}
    public boolean opcodePresent()
    {
        if(opc==null) return false;
        else return true;
    }
	public boolean operand1Present()
	{
		if(op1==null) return false;
		else return true;
	}
	public boolean operand2Present()
	{
		if(op2==null) return false;
		else return true;
	}
	public boolean commentPresent()
	{
		if(c==0) return false;
		else return true;
	}
}
