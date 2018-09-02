/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Avaliacao;
import modelo.Usuario;

/**
 *
 * @author alunoces
 */
@WebServlet(name = "AvaliacaoController", urlPatterns = {"/avaliacao"})
public class AvaliacaoController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(true);
        List<Avaliacao> avaliacoes = (List<Avaliacao>) session.getAttribute("avaliacoes");
        List<Usuario> usuarios = (List<Usuario>) session.getAttribute("usuario");

        if (avaliacoes == null && usuarios == null) {
            avaliacoes =  new ArrayList<>();
            usuarios = new ArrayList<>();
            usuarios.add(new Usuario("admin","admin"));
            session.setAttribute("avaliacoes", avaliacoes);
            session.setAttribute("usuarios", usuarios);
        }
        
        session.setAttribute("avaliacoes", avaliacoes);
        session.setAttribute("usuarios", usuarios);
        
        RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
        dispatcher.forward(req, resp);
    }
  
}
