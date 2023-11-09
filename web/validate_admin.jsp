<%-- 
    Document   : validate_admin
    Created on : Feb 5, 2023, 5:46:09 PM
    Author     : Satish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link
            href="https://fonts.googleapis.com/css2?family=Bangers&family=Fredoka+One&family=Poppins:wght@300;400&family=Titan+One&display=swap"
            rel="stylesheet">
        <title>JSP Page</title>
        <style>
            h1 {
                font-family: 'Poppins', sans-serif;

                font-size: large;
            }
            body{
                background-color: black;
            }
            div{
                margin-top: 230px;
                text-align: center;
                color: white;
            }
        </style>
    </head>
    <body>
        <%
            String username = request.getParameter("user");
            String password = request.getParameter("pass");

            if (username.equals("ankush") && password.equals("admin")) {
                RequestDispatcher rd = request.getRequestDispatcher("adminpanel.html");
                rd.forward(request, response);
            } else {
                
            }
        %>
        <div>
            <img src="./in.gif" alt="img"/>
            <h1>INVALID LOGIN CREDENTIALS !!</h1>     </div>
    </body>
</html>
