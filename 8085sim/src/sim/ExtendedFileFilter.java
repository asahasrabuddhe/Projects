/*
 * @(#) ExtendedFileFilter.java   23/09/2010
 *
 * Copyright 2010 Ajitem 'bZk' Sahasrabuddhe. All rights reserved.
 */

package sim;

import java.io.File;
import javax.swing.filechooser.FileFilter;

/**
 *
 *
 * @author      Ajitem 'bZk' Sahasrabuddhe <bZk@live.in>
 */
public class ExtendedFileFilter extends FileFilter
{
    private String description,extension;

    /**
     * 
     * @param desc
     * @param ext
     */
    public ExtendedFileFilter(String desc, String ext)
    {
        description = desc;
        extension = ext;
    }

    public String getDescription()
    {
        return description;
    }

    public boolean accept(File file)
    {
        if(file.isDirectory()) return true;

        String path=file.getAbsolutePath().toLowerCase();
        String ext="."+extension;

        if(path.endsWith(ext)) return true;
        
        return false;
    }

}
