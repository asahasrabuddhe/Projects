/*
 * @(#)Ports.java   29/09/2010
 *
 * Copyright 2010 Ajitem 'bZk' Sahasrabuddhe. All rights reserved.
 */

package sim;

/**
 *
 *
 * @author      Ajitem 'bZk' Sahasrabuddhe <bZk@live.in>
 */

public class Ports
{
    private String ports[];

    public Ports()
    {
        ports=new String[256];
        for(int i=0;i<256;i++) ports[i]="00";
    }

    public void setPort(String hex,String pos)
    {
        int p=Integer.parseInt(pos, 16);
        ports[p]=hex.toUpperCase();
    }

    public String getPort(String pos)
    {
        String hex=ports[Integer.parseInt(pos, 16)];
        int tmp=2-hex.length(); //convert to 2digit hex
        String dup="";
        for(int j=0;j<tmp;j++) dup=dup+"0";
              hex=dup+hex;
        return hex;
    }

    public String getPortBinary(String pos)
    {
        String hex=ports[Integer.parseInt(pos, 16)];
        int temp=Integer.parseInt(hex, 16);
        String binstr=Integer.toBinaryString(temp);
        int tmp=8-binstr.length(); //convert to 8digit binary
        String dup="";
        for(int j=0;j<tmp;j++) dup=dup+"0";
              binstr=dup+binstr;
        return binstr;
    }
}