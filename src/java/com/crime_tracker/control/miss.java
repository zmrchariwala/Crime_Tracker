/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crime_tracker.control;

import com.crime.image.Imageprocess;
import com.crime_tracker.model.AddressDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
/**
 *
 * @author admin
 */
public class miss extends HttpServlet {
private String name;
          private int age;
          private String address;
          private String state;
          private String city;
          private String image;
          List<String> values=new ArrayList<>();
          int i=1;
          public String str="";
          private String user="user";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            final String path ="C:\\Users\\admin\\Documents\\NetBeansProjects\\WebApplication3\\web\\missing";
          if(ServletFileUpload.isMultipartContent(request))
          {
              try{
                  List<FileItem> multiparts;
                multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for(FileItem f:multiparts)
                {
                    if(f.isFormField())
                    {
                    String fn=f.getFieldName();
                    String value=f.getString();
                    if(fn.equals("name"))
                    {
                        values.add(value);
                    }
                    else if(fn.equals("age"))
                    {
                        values.add(value);
                    }
                    else if(fn.equals("address"))
                    {
                        values.add(value);
                    }
                    else if(fn.equals("state"))
                    {
                        values.add(value);
                    }
                    else if(fn.equals("city"))
                    {
                        values.add(value);
                    }
                    else if(fn.equals("username"))
                    {
                        user=value;
                        values.add(value);
                    }
                    }
                    else
                    {
                        String fn=f.getFieldName();
                        String val=f.getString();
                        if(val.equals(""))
                        {
                         //out.print("null");
                        }
                        else
                        {
                         image=user+".png";
                         if(Imageprocess.processfile(f, image, path))
                         {
                             
                         }
                         else
                         {
                            out.println("File upload failed");
                         }
                         
                        }
                    }
                    }
                values.add(image);
                }
              catch(Exception e)
              {
                out.print(e);
              }
              out.print(values);
              AddressDAO dao=  new AddressDAO();
              dao.missing(values);
              response.sendRedirect("user_homepage.html");
              }
            
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
