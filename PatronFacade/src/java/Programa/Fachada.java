/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Programa;

import Logica.Persona;
import Persistencia.BDHoja;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author juliana
 */
@WebServlet(name = "Fachada", urlPatterns = {"/Fachada"})
public class Fachada extends HttpServlet {

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
        
       PrintWriter out;
        try {
            request.setCharacterEncoding("UTF-8");
            
            //Toma el texto que se ingresa
            String nombre = request.getParameter("nombres");
            String apellido = request.getParameter("apellidos");
            String documento = request.getParameter("documento");
            String telefono = request.getParameter("telefono");
            
            Persona humano= new Persona();
            
            humano.setNombres(nombre);
            humano.setApellidos(apellido);
            humano.setDocumento(documento);
            humano.setTelefono(telefono);
            
            
            BDHoja gestorHoja = BDHoja.getHojita();
            gestorHoja.insertarBD(humano);
            out = response.getWriter();
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println(" <link rel =\"stylesheet\" type=\"text/css\" href=\"css/estilosUno.css\" />");
            out.println("<title>Resultado de la inserción</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>El producto " + nombre + " ha sido ingresado con éxito</h1>");
            out.println("<br>");
            out.println("<a href=\"index.jsp\">Volver a Inicio</a>");
            out.println("</body>");
            out.println("</html>");
        }
        catch (IOException ioException) {
            System.err.println("Error en la escritura del servlet: "
                    + "\n\t Descripción: " + ioException.getMessage()
                    + "\n\t Localización: " + ioException.getLocalizedMessage());

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
