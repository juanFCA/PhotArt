/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 *
 * @author alunoces
 */
@WebServlet("/adicionar")
public class AdicionarController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        String titulo = req.getParameter("titulo");
        String usuario = req.getParameter("usuario");
        String avaliacaoDes = req.getParameter("avaliacao");
        int  nota = Integer.parseInt(req.getParameter("nota"));
        
        Avaliacao avaliacao = new Avaliacao(titulo, usuario, avaliacaoDes, nota);
        
        HttpSession session = req.getSession(true);
        List<Avaliacao> avaliacoes = (List<Avaliacao>) session.getAttribute("avaliacoes");
        avaliacoes.add(avaliacao);
     
        double media = 0;
        
        for(Avaliacao a : avaliacoes){
            media += a.getNota() / ((double) avaliacoes.size());
        }
        
        session.setAttribute("avaliacoes", avaliacoes);
        session.setAttribute("media", media);
        
        RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
        rd.forward(req,resp);
        
    }

}
