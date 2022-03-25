
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        if (op.equals("eliminar")) {
            int pos = -1;
            int indice = -1;
            int id = Integer.parseInt(request.getParameter("id"));
            HttpSession ses = request.getSession();
            
            ArrayList<Tarea> list = (ArrayList<Tarea>)ses.getAttribute("tarea");
            
            for(Tarea t : list){
                pos++;
                System.out.println("pos: "+pos);
                if (t.getId() == id) {
                    indice = pos;
                }
            }
            list.remove(indice);
            response.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        String tarea = request.getParameter("tarea");
        
        
        Tarea tare = new Tarea();
        
        tare.setId(id);
        tare.setTarea(tarea);
        
        HttpSession ses = request.getSession();
        
        ArrayList<Tarea> ta = (ArrayList<Tarea>)ses.getAttribute("tarea");
        
        ta.add(tare);
        
        response.sendRedirect("index.jsp");
    }

}
