/*
 * @(#)Memory.java   29/09/2010
 *
 * Copyright 2010 Ajitem 'bZk' Sahasrabuddhe. All rights reserved.
 */

package sim;

/**
 *
 *
 * @author      Ajitem 'bZk' Sahasrabuddhe <bZk@live.in>
 */

public class Memory
{
    private final int length=65536;
    private String mem[]=new String[length];
    private boolean changed=false;

    public Memory()
    {
        for(int i=0;i<length;i++)
            mem[i]="08"; //There is no opcode with 08 hex
    }
    
    public void write(String hex,int pos)
    {
        changed=true;     
        int tmp=2-hex.length();
        String dup="";
        for(int j=0;j<tmp;j++) dup=dup+"0";
              hex=dup+hex;
        mem[pos]=hex;
    }
    public String read(String chpos)
    {
        int pos=Integer.valueOf(chpos, 16);
        return mem[pos].toUpperCase();
    }
    public String[] getMemoryArray()
    {
        return mem;
    }
    public void setUnchanged()
    {
        changed=false;
    }
    public boolean isChanged()
    {
        return changed;
    }

}