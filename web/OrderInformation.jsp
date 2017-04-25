<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ShoppingCart.ShoppingCart" %>
<html>
<% if (session.getAttribute("cart") != null) {
    ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
}%>
<head>
    <title>Order Information - Checkout</title>
</head>

<body>
    <table width = "100%">
        <tr>
            <td width= "75%"><a href="http://localhost:8080/BookstoreWebsite_war_exploded/index.jsp"><img src="image/images/ksu (1).png" width="350" height="100" alt="Kennesaw Logo"></a></td>
            <td width="25%">
                <a href="shoppingCart.jsp"><img src="image/images/cart.png" alt="cart" width="80" height ="80"/></a>
            </td>
        </tr>
    </table>
    <h1>Order Information</h1>
    <form method='POST' action='${pageContext.request.contextPath}/OrderInfoController'>
        <table>
            <tr>
                <td>
                    <label>Name:
                    <input type='text' name='shippingName' value=''/>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Shipping Address Line 1:
                    <input type='text' name='shippingAddress' value=''/>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Shipping Address Line 2:
                    <input type='text' name='shippingAddressLine2' value=''/>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>City:
                    <input type='text' name='shippingCity' value=''/>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>State:
                        <select name="state">
                            <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="AZ">Arizona</option>
                            <option value="AR">Arkansas</option>
                            <option value="CA">California</option>
                            <option value="CO">Colorado</option>
                            <option value="CT">Connecticut</option>
                            <option value="DE">Delaware</option>
                            <option value="DC">District Of Columbia</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="HI">Hawaii</option>
                            <option value="ID">Idaho</option>
                            <option value="IL">Illinois</option>
                            <option value="IN">Indiana</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="MN">Minnesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NV">Nevada</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NJ">New Jersey</option>
                            <option value="NM">New Mexico</option>
                            <option value="NY">New York</option>
                            <option value="NC">North Carolina</option>
                            <option value="ND">North Dakota</option>
                            <option value="OH">Ohio</option>
                            <option value="OK">Oklahoma</option>
                            <option value="OR">Oregon</option>
                            <option value="PA">Pennsylvania</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="SD">South Dakota</option>
                            <option value="TN">Tennessee</option>
                            <option value="TX">Texas</option>
                            <option value="UT">Utah</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WA">Washington</option>
                            <option value="WV">West Virginia</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                            <option value="AS">American Samoa</option>
                            <option value="GU">Guam</option>
                            <option value="MP">Northern Mariana Islands</option>
                            <option value="PR">Puerto Rico</option>
                            <option value="UM">United States Minor Outlying Islands</option>
                            <option value="VI">Virgin Islands</option>
                        </select>
                    </label>
                </td>
            </tr>
            <tr>
                <label>Zip:
                    <input type='number' name='zip' value=''/>
                </label>
            </tr>
        </table>
    </form>
</body>
</html>
