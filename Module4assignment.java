package module4assignment;

import java.sql.*;
import java.util.*;

public class Module4assignment {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        //
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels", "root", "admin");

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery("SELECT productName FROM products WHERE productLine = 'Classic Cars'");

            while (rs.next())
            {
                System.out.println(rs.getString(1) + " ");
            }

            Scanner scanner = new Scanner(System.in);

            System.out.println("Which product line inventory would you like to check out?");
            System.out.println("Enter:");
            System.out.println("\t1. Classic cars");
            System.out.println("\t2. Ships");
            System.out.println("\t3. Motorcyles");
            
            String userInput = scanner.next();
            
            String sql = "";

            switch(userInput){
                case"1":
                    sql = "SELECT * FROM products WHERE productLine = 'Classic Cars'";
                    break;
                case"2":
                    sql = "SELECT * FROM products WHERE productLine = 'Ships'";
                    break;
                case"3":
                    sql = "SELECT * FROM products WHERE productLine = 'Motorcycles'";
                    break;
                default:
                    System.out.println("You did not enter a valid choice for the product line.");
                    break;
            }//end switch   
            
            rs = stmt.executeQuery(sql);
            
            while (rs.next()){
                System.out.println(rs.getString("productName") + " " + rs.getString("productLine"));
            }

            stmt.executeUpdate("INSERT INTO Products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)\n" +
                    "VALUES ('S72_3213', 'USS Monitor', 'Ships', '1:72', 'Second Gear Diecast', 'Ironclad warship with her steam engine and revolving turret', 780, 35.00, 55.00)");
            
            rs = stmt.executeQuery("SELECT * FROM products WHERE productName = 'USS Monitor'");
            
            while (rs.next()) {
                    System.out.println(rs.getString(1) + ", " + rs.getString(2) + ", " + rs.getString(3) + ", " + rs.getString(4) + ", " + rs.getString(5) + ", " + rs.getString(6) +
                            ", " + rs.getInt(7) + ", " + rs.getDouble(8) + ", " + rs.getDouble(9));
                }
            stmt.executeUpdate("UPDATE products SET productScale = '1:10' WHERE productName ='USS Monitor'");
            
            rs = stmt.executeQuery("SELECT * FROM products WHERE productName = 'USS Monitor'");
            
            while (rs.next()) {
                    System.out.println("Product scale updated and set to " + rs.getString(4) + " for product: " + rs.getString(2));
                }
            
            stmt.executeUpdate("DELETE FROM products WHERE productName ='USS Monitor'");
            
            rs = stmt.executeQuery("SELECT * FROM products WHERE productLine = 'Ships'");
            
            while (rs.next()){
                System.out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3));
            }
            
            
            con.close();

        } catch (Exception e)
        {
            System.out.println(e);
        }

    }

}

