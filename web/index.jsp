<%-- 
    Document   : index
    Created on : Dec 12, 2011, 5:15:35 PM
    Author     : g_f
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%
    if (session.isNew()){
       session.setAttribute("coffee_amount",0);
       session.setAttribute("sugar_amount",0);
       session.setAttribute("water_amount",0);
       session.setAttribute("coffee_total",0);
       session.setAttribute("sugar_total",0);
       session.setAttribute("water_total",0);
       session.setAttribute("sum",0);
       }
     %>
     
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>g_f's Shopping Cart</title>
    </head>
    <body align="center">
        <h1>Shopping Cart</h1>
        <form name="myForm" action="sendInfo.jsp" method="get">
            <table border="1" align="center">
                <tr>
                    <td><b>Item</b></td>
                    <td><b>Price</b></td>
                    <td><b>Quantity</b></td>
                    <td><b>Total</b></td>
                </tr>
                <tr>
                    <td>Coffee</td>
                    <td>18.50</td>
                    <td><input type="text" name="coffee_amount" value="<%= session.getAttribute("coffee_amount") %>"></td>
                    <td><%= session.getAttribute("coffee_total") %></td>
                </tr>
                <tr>
                    <td>Sugar</td>
                    <td>6.95</td>
                    <td><input type="text" name="sugar_amount" value="<%= session.getAttribute("sugar_amount") %>"></td>
                    <td><%= session.getAttribute("sugar_total") %></td>
                </tr>
                <tr>
                    <td>Water</td>
                    <td>1.29</td>
                    <td><input type="text" name="water_amount" value="<%= session.getAttribute("water_amount") %>"></td>
                    <td><%= session.getAttribute("water_total") %></td>
                </tr>
                <tr>
                    <td><b>Total</b></td>
                    <td></td>
                    <td></td>
                    <td><%= session.getAttribute("sum") %></td>
                </tr>
            </table>
            <input type="SUBMIT" value="Check Out">
        </form>
        <form action="remove.jsp">
           <input type="SUBMIT" value="Remove Products" />
        </form>
    </body>
</html>
