/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.controller;

import com.sun.org.apache.bcel.internal.generic.AALOAD;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.Customer;
import za.ac.tut.model.Item;

/**
 *
 * @author user
 */
public class AddServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String code=request.getParameter("kota_code");
        String quantity=request.getParameter("quantity");
        
        //session
        HttpSession nSession=request.getSession(true);
        HttpSession eSession=request.getSession(false);
        
        if(code!=null && quantity!=null){
            int iCode=Integer.parseInt(code);
            int iQuantity=Integer.parseInt(quantity);
            Item item=new Item(iCode, iQuantity);
            
            
            //get the count from the session
            Integer count=(Integer)eSession.getAttribute("count");
            Customer nCustomer=null;
            if(count!=null){
                nCustomer=new Customer(count);
            }else{
                count=0;
                nCustomer=new Customer(count);
                nSession.setAttribute("count", count);
                
            }
              
           
            //get the list from the session
            List<Customer> customers=(List<Customer>) eSession.getAttribute("customerList");
            if(customers!=null){
                for(Customer customerObj: customers)
                {
                    if(customerObj.getOrderNo()==nCustomer.getOrderNo())
                    {
                        customerObj.addItem(item);
                    }
                }
                
            }else{
                customers=new ArrayList<>();
                nCustomer.addItem(item);
                customers.add(nCustomer);
                
                nSession.setAttribute("customerList", customers);
                
            }
           response.sendRedirect("menu.jsp");
            
            
            
        }
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
