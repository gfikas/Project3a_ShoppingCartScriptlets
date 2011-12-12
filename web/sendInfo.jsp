<%-- 
    Document   : sendInfo
    Created on : Dec 12, 2011, 5:47:35 PM
    Author     : g_f
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            double sum = 0;
            String sum_str = request.getParameter("sum");
            if (sum_str!=null){
                sum = Double.parseDouble(sum_str);
            }
        
            String CoffeeAmount = request.getParameter("coffee_amount");
            if (CoffeeAmount != null){
                session.setAttribute("coffee_amount", CoffeeAmount);
                session.setAttribute( "coffee_total",Double.parseDouble((String)session.getAttribute("coffee_amount"))*18.5);
            }
            String SugarAmount = request.getParameter("sugar_amount");
            if (SugarAmount != null){
                session.setAttribute("sugar_amount", SugarAmount);
                session.setAttribute( "sugar_total",Double.parseDouble((String)session.getAttribute("sugar_amount"))*6.95);
            }
            String WaterAmount = request.getParameter("water_amount");
            if (WaterAmount != null){
                session.setAttribute("water_amount", WaterAmount);
                session.setAttribute( "water_total",Double.parseDouble((String)session.getAttribute("water_amount"))*1.29);
            }
            sum += Double.parseDouble((String)session.getAttribute("coffee_amount"))*18.5;
            sum += Double.parseDouble((String)session.getAttribute("sugar_amount"))*6.95;
            sum += Double.parseDouble((String)session.getAttribute("water_amount"))*1.29;
            
            session.setAttribute("sum",sum);
        %>
        
        <meta HTTP-EQUIV="REFRESH" content="0 ; url=index.jsp">
        
    </head>
    <body></body>
</html>
