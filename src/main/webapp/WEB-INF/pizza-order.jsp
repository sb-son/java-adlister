<%--
  Created by IntelliJ IDEA.
  User: shawn
  Date: 2/3/23
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>
    <form action="pizza-order" method="post">
        <h2>Pizza Order Form</h2>
        <label>Crust Type: </label>
        <select name="crust">
            <option value="thin">Thin</option>
            <option value="thick">Thick</option>
            <option value="stuffed">Stuffed</option>
        </select>
        <label>Sauce Type: </label>
        <select name="sauce">
            <option value="tomato">Tomato</option>
            <option value="bbq">BBQ</option>
            <option value="ranch">Alfredo</option>
        </select>
        <label>Size Type: </label>
        <select name="size">
            <option value="small">Small</option>
            <option value="medium">Medium</option>
            <option value="large">Large</option>
        </select>
        <br>
        <label>Toppings: </label>
        <br>
        <input type="checkbox" name="toppings" value="pepperoni">Pepperoni
        <br>
        <input type="checkbox" name="toppings" value="chicken">Chicken
        <br>
        <input type="checkbox" name="toppings" value="mushrooms">Mushrooms
        <br>
        <input type="checkbox" name="toppings" value="olives">Olives
        <br>
        <label>Delivery Address: </label>
        <input type="text" name="address">
        <input type="submit" value="Submit">
    </form>
</body>
</html>