<%-- 
    Document   : index
    Created on : Apr 14, 2017, 1:54:47 PM
    Author     : Adam Hayes
--%>

<%@page import="ShoppingCart.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@page import = "ShoppingCart.ShoppingCart, java.text.DecimalFormat" %>
    <%  DecimalFormat df = new DecimalFormat("#.00");
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart"); %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>
        <a href ="http://localhost:8080/BookstoreWebsite/index.jsp"><img src="image/images/ksu (1).png" width = "300" height = "100" alt = "Kennesaw Logo"></a>
        <h1> Shopping Cart</h1>
        <%  int index = 0;
            int counter = 0;
            int bookType;
            String isbn;
            Book a;%>
        <table border="1">
            <thead>
                <tr>
                    <th>Qty</th>
                    <th>Update Qty</th>
                    <th>Book Cover</th>
                    <th>Book Title</th>
                    <th>Book Type</th>
                    <th>Price Per Book</th>
                    <th>Total Price</th>
                </tr>
            </thead>
            <tbody>
                <%for (int i = 0; i < cart.size(); i++) {
                        a = cart.getBook(i);
                        isbn = a.getIsbn();
                        bookType = cart.getBookType(index);
                        out.println("<tr>");
                        switch (bookType) {
                            case 1:
                                out.println("<td>" + cart.getBookQuantity(index) + "</td>");%>
                                <td><form method='POST' action='${pageContext.request.contextPath}/CartController'><input style="width: 50px;" type='number' name='newQty' value=''/><input style='display:none;' type='text' name='index' value='<%out.print(counter); %>' size='1' /><input type='submit' name='action' value='Update' /></form>Max Qty: <%out.print(a.getNewQuantity());%></td>
                                <%out.println("<td><img src='image/images/" + isbn + ".jpg' width = '175' height = '275' </td>");
                                out.println("<td>" + a.getBookName() + "</td>");
                                out.println("<td><center> New </center></td>");
                                out.println("<td>$" + a.getNewPrice() + "</td>");
                                out.println("<td>$" + (df.format(a.getNewPrice() * cart.getBookQuantity(index))) + "</td>");
                                break;
                            case 2:
                                out.println("<td>" + cart.getBookQuantity(index) + "</td>");%>
                                <td><form method='POST' action='${pageContext.request.contextPath}/CartController'><input style="width: 50px;" type='number' name='newQty' value='' /><input style='display:none;' type='text' name='index' value='<%out.print(counter); %>' size='1' /><input type='submit' name='action' value='Update' /></form>Max Qty: <%out.print(a.getUsedQuantity());%></td>
                                <%out.println("<td><img src='image/images/" + isbn + ".jpg' width = '175' height = '275' </td>");
                                out.println("<td>" + a.getBookName() + "</td>");
                                out.println("<td><center> Used </center></td>");
                                out.println("<td>$" + a.getUsedPrice() + "</td>");
                                out.println("<td>$" + (df.format(a.getUsedPrice() * cart.getBookQuantity(index))) + "</td>");
                                break;
                            case 3:
                                out.println("<td>" + cart.getBookQuantity(index) + "</td>");%>
                                <td><form method='POST' action='${pageContext.request.contextPath}/CartController'><input style="width: 50px;" type='number' name='newQty' value='' /><input style='display:none;' type='text' name='index' value='<%out.print(counter); %>' size='1' /><input type='submit' name='action' value='Update' /></form>Max Qty: <%out.print(a.getRentalQuantity());%></td>
                                <%out.println("<td><img src='image/images/" + isbn + ".jpg' width = '175' height = '275' </td>");
                                out.println("<td>" + a.getBookName() + "</td>");
                                out.println("<td><center> Rental </center></td>");
                                out.println("<td>$" + a.getRentalPrice() + "</td>");
                                out.println("<td>$" + (df.format(a.getRentalPrice() * cart.getBookQuantity(index))) + "</td>");
                                break;
                            case 4:
                                out.println("<td>" + cart.getBookQuantity(index) + "</td>");%>
                                <td><form method='POST' action='${pageContext.request.contextPath}/CartController'><input style="width: 50px;" type='number' name='newQty' value='' /><input style='display:none;' type='text' name='index' value='<%out.print(counter); %>' size='1' /><input type='submit' name='action' value='Update' /></form>Max Qty: <%out.print(a.getEbookQuantity());%></td>
                                <%out.println("<td><img src='image/images/" + isbn + ".jpg' width = '175' height = '275' </td>");
                                out.println("<td>" + a.getBookName() + "</td>");
                                out.println("<td><center> Ebook </center></td>");
                                out.println("<td>$" + a.getEbookPrice() + "</td>");
                                out.println("<td>$" + (df.format(a.getEbookPrice() * cart.getBookQuantity(index))) + "</td>");
                                break;
                        }

                        out.println("</tr>");
                        index++;
                        counter++;
                }
                %>
            </tbody>
        </table>

                <%out.println("<pre style='font-size: large'>                                                                       Subtotal    $" + cart.getSubtotal() + "</pre>");%>
                <%out.println("<pre style='font-size: large'>                                                                       Tax         $" + cart.getCalcTax()+ "</pre>");%>
                <%out.println("<pre style='font-size: large'>                                                                       Total       $" + cart.getTotalPrice() + "</pre>");%>

        <form method='POST' action='${pageContext.request.contextPath}/CartController'>
            <input type="submit" name ="action" value="Continue Shopping"/>
            <input type="submit" name="action" value="Checkout"/>
        </form>
    </body>
</html>
