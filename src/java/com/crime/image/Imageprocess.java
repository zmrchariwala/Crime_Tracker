/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crime.image;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import javax.imageio.ImageIO;
import org.apache.commons.fileupload.FileItem;

/**
 *
 * @author admin
 */
public class Imageprocess {

    private static final int IMG_WIDTH = 400;
    private static final int IMG_HEIGHT = 300;
    public static String str = "";
    public static String name = "";

    public static boolean processfile(FileItem item, String imgName, String path) {
        try {

            String name = new File(item.getName()).getName();
            File f = new File(path + File.separator + name);
            item.write(f);
            File resizefile = new File(path + File.separator + imgName);

            BufferedImage originalImage = ImageIO.read(f);

            int type = originalImage.getType() == 0 ? BufferedImage.TYPE_INT_ARGB : originalImage.getType();

            BufferedImage resizeImage = new BufferedImage(IMG_WIDTH, IMG_HEIGHT, type);
            Graphics2D g = resizeImage.createGraphics();
            g.drawImage(originalImage, 0, 0, IMG_WIDTH, IMG_HEIGHT, null);
            g.dispose();
            ImageIO.write(resizeImage, "png", resizefile);
            f.delete();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);

        }
        return true;
    }
}
