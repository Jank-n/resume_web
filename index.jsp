
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Lookup</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body style="background-color:#6610f2">
        <div class="d-flex justify-content-center position-relative">
            <img src="rainbowjets.jpg" id="jets" width="1600" alt="jet formation with rainbow trails">
        <div class="card text-bg-dark p-3 position-absolute" style="width: 50rem; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index: 1;">
            <div class="card-body">
                <h1 class="card-title">Enter Order Number <i class="bi bi-search"></i></h1>
                
                <form action="order.jsp">
                    
                    <div class="form-group">
                        <label for="on"></label>
                        <input type="text" class="form-control" id="on" name="orderNumber">
                    </div>
                    
                    <button class="btn btn-primary" type="submit" value="submit">Submit</button>
            </div>
        </div>
    </form>
                
            </div>
    </body>
</html>
