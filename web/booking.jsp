<%-- 
    Document   : booking
    Created on : Feb 2, 2023, 7:53:29 PM
    Author     : Satish
--%>

<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import=" com.mongodb.MongoClient"%>
<%@page import=" com.mongodb.client.MongoCollection" %>
<%@page import=" com.mongodb.client.MongoDatabase" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BOOKING JSP</title>
        
    <link
        href="https://fonts.googleapis.com/css2?family=Bangers&family=Fredoka+One&family=Poppins:wght@300;400&family=Titan+One&display=swap"
        rel="stylesheet">
    <title>Final response</title>
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
           try{
           
           String name = request.getParameter("Name");
           String email = request.getParameter("Email");
           String mob = request.getParameter("Mob");
           String date = request.getParameter("Date");
           String time = request.getParameter("Time");
           String guest = request.getParameter("Guest");
          
            // Creating a Mongo client 
            MongoClient mongoClient = new MongoClient( "localhost" , 27017 ); 
            MongoDatabase db = mongoClient.getDatabase("BURGERKING_DB");
             //creating collection or get collection if exists.
            MongoCollection<Document>  collection= db.getCollection("BOOKING_REC");
            //Inserting sample records by creating documents.
            Document doc =new Document("Customer's name",name);
            doc.append("Customer's Email",email);  
            doc.append("Customer's Mobile number",mob);  
            doc.append("Date of Booking", date);
            doc.append("Time of Booking", time);
            doc.append("Number of Guests", guest);
            
            collection.insertOne(doc);
           
           }catch (Exception e) {
                out.print(e);
            }
       %>
        <div>
        <img src="./img/io.gif" alt="image" height="300px">
        <p>Thankyou your response has been recorded!</p>
        <br><br>
        <a href="booking.html">GO BACK</a>
    </div>
    </body>
</html>
