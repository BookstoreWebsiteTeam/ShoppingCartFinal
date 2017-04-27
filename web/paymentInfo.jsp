<%@ page import="Objects.OrderInfoHandler" %><%--
  Created by IntelliJ IDEA.
  User: Bookstore
  Date: 4/26/2017
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Payment Information</title>
</head>
<body>
    <h1>&emsp;&emsp;Please Select a Payment Type</h1>
    <form method="post" action='${pageContext.request.contextPath}/paymentInfoController'>
        <label> Visa/Mastercard <input type="radio" name="creditCard" value="creditCard" checked/></label>
        <br>
        <br>
            <<input type="text">
        <%-- INSERT CREDIT CARD BOXES HERE --%>
        <br>
        <br>
        <label>PayPal <input type="radio" name="paypal" value="paypal"/></label>
        <br>
        <br>
        <label>Financial Aid <input type="radio" name="financialAid" value="financialAid"/></label>

    </form>
</body>
</html>
