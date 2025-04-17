/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.tut.ejb.bl.AccountHolderFacadeLocal;
import za.tut.entities.AccountHolder;

/**
 *
 * @author user
 */
public class MyServlet extends HttpServlet {

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
            out.println("<title>Servlet MyServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MyServlet at " + request.getContextPath() + "</h1>");
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
    @EJB 
    private AccountHolderFacadeLocal ahfl;
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
            String op=request.getParameter("op");
            String url="index.html";
            
            if(op!=null && "add".equals(op))
            {
                String fullname=request.getParameter("fullname");
                String street=request.getParameter("street");
                String city=request.getParameter("city");
                String code=request.getParameter("code");
                String emailAddress=request.getParameter("email");
                String cell=request.getParameter("cellNo");
                
                AccountHolder accHolder=createAccHolder(fullname, street, city, code, cell, cell);
                ahfl.create(accHolder);
                request.setAttribute("name", fullname);
                url="add_outcome.jsp";
            }
            else if(op!=null && "search".equals(op))
            {
                Long id=Long.parseLong(request.getParameter("id"));
                AccountHolder accHolder=searchHolder(id);
                request.setAttribute("name", accHolder.getFullname());
                request.setAttribute("street", accHolder.getStreet());
                request.setAttribute("city", accHolder.getCity());
                request.setAttribute("code", accHolder.getCode());
                request.setAttribute("email", accHolder.getEmailAddress());
                request.setAttribute("cell", accHolder.getCellNo());
                
                url="search_outcome.jsp";
            }
            else if(op!=null && op.equals("view"))
            {
                List<AccountHolder> accHolderList=ahfl.findAll();
                request.setAttribute("list",accHolderList);
                url="view_all.jsp";
            }
            RequestDispatcher dp= request.getRequestDispatcher(url);
            dp.forward(request, response);
    }
    private AccountHolder createAccHolder(String fullname, String street, String city, String code, String email, String cellNo)
    {
        AccountHolder accountHolder=new AccountHolder();
        accountHolder.setFullname(fullname);
        accountHolder.setStreet(street);
        accountHolder.setCity(city);
        accountHolder.setCode(code);
        accountHolder.setEmailAddress(email);
        accountHolder.setCellNo(cellNo);
        return accountHolder;
    }
    private AccountHolder searchHolder(Long id)
    {
        AccountHolder accHolder=ahfl.find(id);
        return accHolder;
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
