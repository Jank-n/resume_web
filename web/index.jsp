<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    try {
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/comicxchange", "root", "admin");
    
    Statement stmt = con.createStatement();
    
    ResultSet rs = stmt.executeQuery("SELECT * FROM comics;");
    
    
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="style.css">
        <title>ComicXchange</title>
        
    </head>
    <body>
        <h1 id="cxc" class="center-heading">ComicXchange</h1>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">
                <img src="smlogo.png" alt="comicxchange logo" width="100" height="100">
                </a>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Browse</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Reading List</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="#">Add Comic</a>
                    </ul>
                    <form class="d-inline-flex p-2" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        
<h2 style="padding: 10px">Featured Comics</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-4 grid-item">
                <img src="lailastarr.jpg" width="400" alt="laila falling in the sky">
            </div>
            <div class="col-md-6 grid-item">
                <h3>The Many Deaths of Laila Starr</h3>
                <p>With humanity on the verge of discovering immortality, the avatar of Death is fired and relegated to the world below to live out her now-finite days in the body of twenty-something Laila Starr in Mumbai. Struggling with her newfound mortality, Laila hatches a plan and soon discovers a way to be placed at the time and location where the creator of immortality will be born . . . But will Laila take her chance to permanently reverse the course of (future) history, or does a more shocking fate await her within the coils of mortal existence?</p>
            </div>
        </div>
      <div class="row">
          <div class="col-md-4 grid-item">
              <img src="lastronin.jpg" width="400" alt="the last ronin looking back">
          </div>
          <div class="col-md-6 grid-item">
              <h3>The Last Ronin</h3>
              <p>Who is the Last Ronin? In a future, battle-ravaged New York City, a lone surviving Turtle embarks on a seemingly hopeless mission seeking justice for the family he lost.</p>
          </div>
      </div>
        <div class="row">
          <div class="col-md-4 grid-item">
              <img src="siktc.png" width="400" alt="Jessica Slaughter in a spooky forest">
          </div>
          <div class="col-md-6 grid-item">
              <h3>Something is Killing the Children</h3>
              <p>When children begin to go missing in the town of Archer’s Peak, all hope seems lost until a mysterious woman arrives to reveal that terrifying creatures are behind the chaos - and that she alone will destroy them, no matter the cost.</p>
          </div>
      </div>
  <%        
      con.close();
      } catch (Exception e)
      {
          e.printStackTrace();
      }//end try-catch


  %>
    </body>
</html>
