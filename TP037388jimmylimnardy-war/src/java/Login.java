/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.Customer;
import Model.CustomerFacade;
import Model.Staff;
import Model.StaffFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Anonymous
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @EJB
    private StaffFacade staffFacade;

    @EJB
    private CustomerFacade customerFacade;

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
        String username = request.getParameter("login_email");
        String password = request.getParameter("login_password");
        Customer user = null; 
        Staff admin = null;
        List<Customer> customer = customerFacade.findAll();
        List<Staff> staff = staffFacade.findAll();
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            for(int i =0 ; i< customer.size(); i++){
                if(customer.get(i).getEmail().equals(username)){
                    if(customer.get(i).getPassword().equals(password)){
                        user = customer.get(i);
                    }
                }
            }
            if(user == null){
                for(int i =0 ; i< staff.size(); i++){
                    if(staff.get(i).getEmail().equals(username)){
                        if(staff.get(i).getPassword().equals(password)){
                            admin = staff.get(i);
                        }
                    }
                }
            }
            HttpSession session = request.getSession();
            if(user != null){
                session.setAttribute("user", user);
                request.getRequestDispatcher("Menu.jsp").include(request, response);
            }if(admin != null){
                session.setAttribute("user", admin);
                request.getRequestDispatcher("Menu.jsp").include(request, response);
            }else{
                out.println(customer.size()+" "+staff.size()+" Incorrect Username or Password !<br><br><br>");
                request.getRequestDispatcher("Login.jsp").include(request, response);
            }
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
