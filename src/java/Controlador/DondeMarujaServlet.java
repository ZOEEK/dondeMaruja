/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Cupon;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zoekt
 */
@WebServlet(name = "DondeMarujaServlet", urlPatterns = {"/Controlador.do"})
public class DondeMarujaServlet extends HttpServlet {
    ArrayList<Usuario> listaUsuario = new ArrayList<Usuario>();
    ArrayList<Cupon> listaCupon = new ArrayList<Cupon>();
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
            String btn = request.getParameter("btn");
            
            //Llamados desde página ingresar
            if(btn.equals("ingresar"))
            {
                String rut = request.getParameter("rut");
                String clave = request.getParameter("clave");
                boolean validado = false;
                
                //Buscar en el arraylist
                
                for(Usuario u : listaUsuario){
                    if(u.getRut().equals(rut)){
                        if(u.getClave().equals(clave)){
                            validado = true;
                        }
                    }
                }
                if (validado = true) {
                    request.getSession().setAttribute("mensajeLogin", "");
                    response.sendRedirect("catalogo.jsp");
                }
                else
                {
                    request.getSession().setAttribute("mensajeLogin", "Error en usuario o contraseña.");
                    response.sendRedirect("login.jsp");
                }
            }
            
            //Llamados desde página registrar
            if(btn.equals("Registrar")){
                String rut = request.getParameter("rut");
                String nombre = request.getParameter("nombre");
                String clave = request.getParameter("clave");
                String apellidoPaterno = request.getParameter("apellidoPaterno");
                String apellidoMaterno = request.getParameter("apellidoMaterno");
                String fechaNacimiento = request.getParameter("fechaNacimiento");
                int edad = Integer.parseInt(request.getParameter("edad"));
                String estadoCivil = request.getParameter("cboEstado");
                String mail = request.getParameter("mail");
                String numeroTelefono = request.getParameter("numeroTelefono");
                
                Usuario u = new Usuario(rut, nombre, clave, apellidoPaterno, apellidoMaterno, fechaNacimiento, edad, estadoCivil, mail, numeroTelefono);
                
                listaUsuario.add(u);
                request.getSession().setAttribute("msgRegistro", "Usuario Registrado Correctamente");
                request.getSession().setAttribute("listaU", listaUsuario);
                response.sendRedirect("registrarse.jsp");
                
            }
            if (btn.equals("Buscar")) {
                String rut = request.getParameter("rut");
                String nombre = "";
                String clave = "";
                String apellidoPaterno = "";
                String apellidoMaterno = "";
                String fechaNacimiento = "";
                String edad = ""; 
                String estadoCivil = "";
                String mail = "";
                String numeroTelefono = "";
                
                for (Usuario u : listaUsuario) {
                    if (u.getRut().equals(rut)) {
                        nombre = u.getNombre();
                        clave = u.getClave();
                        apellidoPaterno = u.getApellidoPaterno();
                        apellidoMaterno = u.getApellidoMaterno();
                        fechaNacimiento = u.getFechaNacimiento();
                        edad = String.valueOf(u.getEdad());
                        estadoCivil = u.getEstadoCivil();
                        mail = u.getMail();
                        numeroTelefono = u.getTelefono();
                    }
                }
                //request.getSession().setAttribute("rut" , rut);
                request.getSession().setAttribute("nombre", nombre);
                request.getSession().setAttribute("clave", clave);
                request.getSession().setAttribute("apellidoPaterno", apellidoPaterno);
                request.getSession().setAttribute("apellidoMaterno", apellidoMaterno);
                request.getSession().setAttribute("fechaNacimiento", fechaNacimiento);
                request.getSession().setAttribute("edad", edad);
                request.getSession().setAttribute("estadoCivil", estadoCivil);
                request.getSession().setAttribute("mail", mail);
                request.getSession().setAttribute("numeroTelefono", numeroTelefono);
                response.sendRedirect("mantenedor.jsp");
            }
            if(btn.equals("Modificar"))
            {
                String rut = request.getParameter("rut");
                String nombre = request.getParameter("nombre");
                String clave = request.getParameter("clave");
                String apellidoPaterno = request.getParameter("apellidoPaterno");
                String apellidoMaterno = request.getParameter("apellidoMaterno");
                String fechaNacimiento = request.getParameter("fechaNacimiento");
                int edad = Integer.parseInt(request.getParameter("edad"));
                String estadoCivil = request.getParameter("cboEstado");
                String mail = request.getParameter("mail");
                String numeroTelefono = request.getParameter("numeroTelefono");
            
                for(Usuario u : listaUsuario)
                {
                    if (u.getRut().equals(rut)) {
                        u.setNombre(request.getParameter("nombre"));
                        u.setClave(request.getParameter("clave"));
                        u.setApellidoPaterno(request.getParameter("apellidoPaterno"));
                        u.setApellidoMaterno(request.getParameter("apellidoMaterno"));
                        u.setFechaNacimiento(request.getParameter("fechaNacimiento"));
                        u.setEdad(Integer.parseInt(request.getParameter("edad")));
                        u.setEstadoCivil(request.getParameter("estadoCivil"));
                        u.setMail(request.getParameter("mail"));
                        u.setTelefono(request.getParameter("numeroTelefono"));

                    }
               }
                request.getSession().setAttribute("msjModificar", "Datos actualizados correctamente");
                response.sendRedirect("mantenedor.jsp");
                
            }
            if(btn.equals("Eliminar"))
            {
                String rut = request.getParameter("rut");
                for(Usuario u : listaUsuario)
                {
                    if(u.getRut().equals(rut))
                    {
                        listaUsuario.remove(u);
                    }
                }
                request.getSession().setAttribute("msjEliminar", "Usuario eliminado del sistema");
                response.sendRedirect("mantenedor.jsp");
            }
            if(btn.equals("Generar")){
                String fechaEmision = request.getParameter("fechaEmision");
                String fechaValidez = request.getParameter("fechaValidez");
                int numeroCupon = Integer.parseInt(request.getParameter("numeroCupon"));
                String nombreApellidos = request.getParameter("nombreApellidos");
                String rut = request.getParameter("rut");
                String direccion = request.getParameter("direccion");
                String mail = request.getParameter("mail");
                String numeroTelefono = request.getParameter("numeroTelefono");
                
                Cupon c = new Cupon(fechaEmision, fechaValidez, numeroCupon, nombreApellidos, rut, direccion, mail, numeroTelefono);
                listaCupon.add(c);
               
                request.getSession().setAttribute("msgGenerar", "Cupon generado Correctamente");
                request.getSession().setAttribute("listaC", listaCupon);
                response.sendRedirect("cupon.jsp");
                request.getSession().setAttribute("nombreApellidos", nombreApellidos);
                request.getSession().setAttribute("fechaEmision", fechaEmision);
                request.getSession().setAttribute("fechaValidez", fechaValidez);
                request.getSession().setAttribute("numeroCupon", numeroCupon);
                request.getSession().setAttribute("rut", rut);
                request.getSession().setAttribute("direccion", direccion);
                request.getSession().setAttribute("mail", mail);
                request.getSession().setAttribute("numeroTelefono", numeroTelefono);
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
