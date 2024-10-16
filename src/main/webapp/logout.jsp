<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    // Obtener la sesión actual directamente sin declarar de nuevo
    if (session != null) {
       
        session.invalidate();
    }
    // Redirigir al usuario a la página de inicio
    response.sendRedirect("index.jsp");
%>
