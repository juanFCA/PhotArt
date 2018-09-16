/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filtro;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import modelo.Avaliacao;
import modelo.Usuario;

/**
 *
 * @author juan
 */
@WebFilter(urlPatterns = {"/*"})
public class AutenticacaoFilter implements Filter {

    //Método executado quando o filtro é iniciado
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    //Médoto onde a lógica do filtro é implementada
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        //Cast para requisição HTTP
        HttpServletRequest req = (HttpServletRequest) request;
       
        List<Avaliacao> avaliacoes = (List<Avaliacao>) req.getSession().getAttribute("avaliacoes");
        List<Usuario> usuarios = (List<Usuario>) req.getSession().getAttribute("usuarios");

        if (avaliacoes == null && usuarios == null) {
            avaliacoes =  new ArrayList<>();
            usuarios = new ArrayList<>();
            usuarios.add(new Usuario("admin","admin"));
            req.getSession().setAttribute("avaliacoes", avaliacoes);
            req.getSession().setAttribute("usuarios", usuarios);
        }
        
        //Se não for login, e o usuário não está logado, redireciona para login.jsp
        if(!"/photart/login".equals(req.getRequestURI()) && req.getSession(true).getAttribute("usuario") == null) {
            request.setAttribute("erro", "Favor realizar login para continuar.");
            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
        }
        //Continua a execução, passando para o próximo filtro.servlet/página do fluxo de execução.
        chain.doFilter(request, response);
    }
    
    //Método executado quando o filtro é destruído
    @Override
    public void destroy() {} 
    
}
