/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filtro;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
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
public class TempoRequisicaoFilter implements Filter {

    private final static Logger LOGGER = Logger.getLogger(TempoRequisicaoFilter.class.getName());
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        
        long tempoInicial = System.currentTimeMillis();
        
        chain.doFilter(request, response);
        
        long tempoFinal = System.currentTimeMillis();
        String uri = req.getRequestURI();
        
        LOGGER.log(Level.INFO, "Tempo de resposta {0}: {1}ms", new Object[]{uri, tempoFinal - tempoInicial});
    }

    @Override
    public void destroy() {}
    
}
