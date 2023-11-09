<%-- 
    Document   : delete_cheflogic
    Created on : Feb 9, 2023, 1:53:00 PM
    Author     : Satish
--%>

<%@page import="com.mongodb.client.model.Filters"%>
<%@page import="com.mongodb.client.model.Updates"%>
<%@page import="org.bson.conversions.Bson"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.mongodb.client.FindIterable"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.MongoClient"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p,
            a {
                font-family: 'Poppins', sans-serif;

                font-size: large;
            }

            body {

                text-align: center;
            }

            div {
                margin-top: 100px;
            }

            a:link, a:visited {
                background-color: white;
                color: black;
                border: 2px solid green;
                border-radius: 10px;
                padding: 5px 8px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
            }

            a:hover,
            a:active {
                background-color: #fbaf32;
                color: white;
            }
        </style>
    </head>
    <body>
        <%
            String ename = request.getParameter("fname");
            String eval = request.getParameter("exval");

            MongoClient mongoClient = new MongoClient("localhost", 27017);

            MongoDatabase db = mongoClient.getDatabase("BURGERKING_DB");

            //creating collection or get collection if exists.
            MongoCollection<Document> collection = db.getCollection("NEWCHEF_REC");
            System.out.println("collection created ");

            collection.deleteOne(Filters.eq(ename, eval));
            System.out.println("Document deleted successfully...");


        %>
        <div>
            <img src="./done.gif" alt="image" height="300px">
            <p>Record has been deleted!</p>
            <br><br>
            <a href="adminpanel.html">GO BACK</a>
        </div>
    </body>
</html>
