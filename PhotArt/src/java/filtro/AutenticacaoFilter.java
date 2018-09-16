/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filtro;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

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
