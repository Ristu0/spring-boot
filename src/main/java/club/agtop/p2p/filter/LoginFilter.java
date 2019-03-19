package club.agtop.p2p.filter;

import club.agtop.p2p.entity.Admin;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "loginFilter", urlPatterns = "/admin/*")
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) servletRequest).getSession();
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            ((HttpServletResponse) servletResponse).sendRedirect(((HttpServletRequest) servletRequest).getContextPath() + "/admin_login.jsp");
        }
        filterChain.doFilter(servletRequest, servletResponse);

    }

    @Override
    public void destroy() {

    }
}
