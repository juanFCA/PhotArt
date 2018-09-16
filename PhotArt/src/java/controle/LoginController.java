/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Usuario;

/**
 *
 * @author juan
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        HttpSession session = req.getSession(true);
        RequestDispatcher rd;
       
        String usuarioNome = (String) req.getParameter("usuario");
        String usuarioSenha = (String) req.getParameter("senha");
        
        List<Usuario> usuarios = (List<Usuario>) session.getAttribute("usuarios");
        
        boolean existe = verificarUsuario(usuarioNome, usuarioSenha, usuarios);
        
        if(existe) {
            Usuario usuario = new Usuario(usuarioNome, usuarioSenha);
            session.setAttribute("usuario", usuario);
            rd = req.getRequestDispatcher("/index.jsp");
            rd.forward(req, resp);
        } else {
            req.setAttribute("erro", "Usuário ou Senha desconhecido.");
            rd = req.getRequestDispatcher("/login.jsp");
            rd.forward(req, resp);
        }
    }

    private boolean verificarUsuario(String nome, String senha, List<Usuario> usuarios) {
        for(Usuario u : usuarios) {
            if(nome.equals(u.getNome()) && senha.equals(u.getSenha())) {
                return true;
            } 
        }
        return false;
    }
}
