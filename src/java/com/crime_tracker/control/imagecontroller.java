/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crime_tracker.control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.util.List;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import com.crime.image.Imageprocess;
import com.crime_tracker.model.AddressDAO;
import java.util.ArrayList;
import com.crime_tracker.model.webservices;
import java.sql.Connection;

/**
 *
 * @author admin
 */
public class imagecontroller extends HttpServlet {
        private String c_type;
	private String c_date;
        private String imagename;
	private String reason;
        private String district;
	private String city;
        private String description;
	private String suspect;
        private String user;
        private String address;
        private Connection con;
        public int i=0;
        public String str="";
        List<String> values=new ArrayList<>();
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
        
        //final String path = request.getServletContext().getRealPath("") + "images";
        final String path ="C:\\Users\\admin\\Documents\\NetBeansProjects\\WebApplication3\\web\\images";
        AddressDAO dao=new AddressDAO();
        i=dao.imgno();
        if(ServletFileUpload.isMultipartContent(request))
        {
            
            try{
//                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                List<FileItem> multiparts;
                multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                //out.print(path);
                
                for(FileItem f:multiparts)
                {
                    if(f.isFormField())
                    {
                    String fn=f.getFieldName();
                    String value=f.getString();
                    if(fn.equals("crime_type"))
                    {
                        //c_type=value;
                        values.add(value);
                    }
                    else if(fn.equals("date"))
                    {
                        //c_date=value;
                        values.add(value);
                    }
                    else if(fn.equals("reason"))
                    {
                        reason=value;     
                        values.add(value);
                    }
                    else if(fn.equals("state"))
                    {
                        district=value; 
                        values.add(value);
                    }
                    else if(fn.equals("dist"))
                    {
                        district=value; 
                        values.add(value);
                    }
                    else if(fn.equals("city"))
                    {
                        city=value;       
                        values.add(value);
                    }
                    else if(fn.equals("address"))
                    {
                        address=value;       
                        values.add(value);
                    }
                    else if(fn.equals("description"))
                    {
                        description=value;
                        values.add(value);
                    }
                    else if(fn.equals("suspect"))
                    {
                        suspect=value;    
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
                         imagename=user+i+".png";
                         i=i+10;
                         
                         str=str+":"+imagename;
                         if(Imageprocess.processfile(f, imagename, path))
                         {
                             
                         }
                         else
                         {
                            out.println("File upload failed");
                         }
                         
                        }
                        
                    }
                    
                }
                values.add(str);
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
                out.print(e);
            }
            out.println(values);
            //AddressDAO dao= new AddressDAO();
            dao.insertvalue(values);
            
            response.sendRedirect("user_homepage.jsp");
        }
        else
        {
            
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
