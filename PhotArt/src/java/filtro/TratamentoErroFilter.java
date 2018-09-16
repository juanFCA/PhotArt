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
import org.jboss.logging.Logger;

/**
 *
 * @author juan
 */
@WebFilter(urlPatterns = {"/*"})
public class TratamentoErroFilter implements Filter {

    private final static Logger LOGGER = Logger.getLogger(TempoRequisicaoFilter.class.getName());
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        try {
            chain.doFilter(request, response);
        } catch (Exception e) {
            HttpServletRequest req = (HttpServletRequest) request;
            LOGGER.log(Logger.Level.ERROR, "Erro ao acessar página '" + req.getRequestURI() + "': " + e.getMessage());
            req.setAttribute("erro", e.getMessage());
            RequestDispatcher rd = request.getRequestDispatcher("/erro.jsp");
            rd.forward(request, response);
        }
        
        
    }

    @Override
    public void destroy() {}
    
    
}
