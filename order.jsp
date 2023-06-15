<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
        <a id="searchlink" href="index.jsp">Search New Product</a>
        <%
            //use a try catch block to catch any errors
            try{
                //create a connection to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels", "root", "admin");

                Statement stmt = con.createStatement();

                //execute a select query to retrieve a resultset containg the order details
                ResultSet rs = stmt.executeQuery("SELECT O.orderDate, O. shippedDate, D.productCode, D.quantityOrdered, D.priceEach, P.productName FROM orders O, orderDetails D, products P WHERE O.orderNumber = D.orderNumber AND D.productCode = P.productCode AND O.ordernumber = '" + request.getParameter("orderNumber") + "';");
                //use while loop to go through resultset
                while (rs.next()){
      
        %>
        <table class="table">
            <tr><th><%out.print(rs.getString("productName"));%></th></tr>
            <tr>
                <td>Order Date: </td>
                <td><%out.print(rs.getString("orderdate"));%></td>
            </tr>
            <tr>
                <td>Shipped Date: </td>
                <td><%out.print(rs.getString("shippeddate"));%></td>
            </tr>
            <tr>
                <td>Product Code: </td>
                <td><%out.print(rs.getString("productcode"));%></td>
            </tr>
            <tr>
                <td>Quantity Ordered: </td>
                <td><%out.print(rs.getString("quantityordered"));%></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>$<%out.print(rs.getString("priceeach"));%></td>
            </tr>
        </table>
            
        <%
            }//end while loop
            con.close();
            } catch (Exception e){
                e.printStackTrace();
            }//end try-catch

            
        %>
        
    </body>
</html>
