<%-- 
    Document   : remove
    Created on : Dec 12, 2011, 7:46:51 PM
    Author     : g_f
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
           session.setAttribute("coffee_amount",0);
           session.setAttribute("sugar_amount",0);
           session.setAttribute("water_amount",0);
           session.setAttribute("coffee_total",0);
           session.setAttribute("sugar_total",0);
           session.setAttribute("water_total",0);
           session.setAttribute("sum",0);
        %>
        <meta HTTP-EQUIV="REFRESH" content="0 ; url=index.jsp">
    </head>
    <body></body>
</html>
