/*
 * @(#)XMLRead.java   29/09/2010
 *
 * Copyright 2010 Ajitem 'bZk' Sahasrabuddhe. All rights reserved.
 */

package sim;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 *
 *
 * @author      Ajitem 'bZk' Sahasrabuddhe <bZk@live.in>
 */

public class XMLRead
{
    public String[] getHelp(String opcodeName)
    {
        String help[]=new String[3];
        try
        {
            java.io.InputStream is = getClass().getResourceAsStream("/sim/help.xml");
            DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
            Document doc = docBuilder.parse(is);

            // normalize text representation
            doc.getDocumentElement().normalize();

            NodeList instrList=doc.getElementsByTagName("instruction");
            for(int i=0;i<instrList.getLength();i++)
            {
                Node instrNode=instrList.item(i);
                Element instrElement=(Element)instrNode;

                NodeList opcodeList=instrElement.getElementsByTagName("opcode");
                Node opcodeNode=opcodeList.item(0);
                if (opcodeNode.getTextContent().trim().equals(opcodeName))
                {
                    NodeList operandList=instrElement.getElementsByTagName("operand");
                    Node operandNode=operandList.item(0);
                    help[0]=operandNode.getTextContent().trim();

                    NodeList shortList=instrElement.getElementsByTagName("short");
                    Node shortNode=shortList.item(0);
                    help[1]=shortNode.getTextContent().trim();

                    NodeList longList=instrElement.getElementsByTagName("long");
                    Node longNode=longList.item(0);
                    help[2]=longNode.getTextContent().trim();
                    return help;
                }
             }

        }catch (SAXParseException err) {
        System.out.println ("** Parsing error" + ", line " + err.getLineNumber () + ", uri " + err.getSystemId ());
        System.out.println(" " + err.getMessage ());

        }catch (SAXException e) {
        Exception x = e.getException ();
        ((x == null) ? e : x).printStackTrace ();

        }catch (Throwable t) {
        t.printStackTrace ();
        }
        return null;
    }
    public String[] getAllOpcode()
    {
         String allOpList[]=null;
         int count=0;
         try
         {
             java.io.InputStream is = getClass().getResourceAsStream("/sim/help.xml");
            DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
            Document doc = docBuilder.parse(is);

            // normalize text representation
            doc.getDocumentElement ().normalize ();
          
            NodeList instrList=doc.getElementsByTagName("instruction");
            allOpList=new String[instrList.getLength()];
            for(int i=0;i<instrList.getLength();i++)
            {
                Node instrNode=instrList.item(i);
                Element instrElement=(Element)instrNode;
                NodeList opcodeList=instrElement.getElementsByTagName("opcode");
                Node opcodeNode=opcodeList.item(0);
                allOpList[count]=opcodeNode.getTextContent().trim().toUpperCase();
                count++;
           }
         }
         catch (SAXParseException err) {
          System.out.println ("** Parsing error" + ", line " + err.getLineNumber () + ", uri " + err.getSystemId ());
          System.out.println(" " + err.getMessage ());

         }catch (SAXException e) {
          Exception x = e.getException ();
         ((x == null) ? e : x).printStackTrace ();

         }catch (Throwable t) {
         t.printStackTrace ();
         }
         for(int i=0;i<count;i++) //Sorting the list
         {
             for(int j=1;j<count-i;j++)
             {
                 if(allOpList[j-1].compareToIgnoreCase(allOpList[j])>0)
                 {
                     String t=allOpList[j];
                     allOpList[j]=allOpList[j-1];
                     allOpList[j-1]=t;
                 }
             }
         }
         return allOpList;       
    }
}

