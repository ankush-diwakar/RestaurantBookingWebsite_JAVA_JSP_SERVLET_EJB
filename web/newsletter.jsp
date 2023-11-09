<%-- 
    Document   : newsletter
    Created on : Feb 5, 2023, 7:40:56 PM
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
           
          
           String email = request.getParameter("em");
       
          
            // Creating a Mongo client 
            MongoClient mongoClient = new MongoClient( "localhost" , 27017 ); 
           
            
            
            MongoDatabase db = mongoClient.getDatabase("BURGERKING_DB");
          
            
             //creating collection or get collection if exists.
            MongoCollection<Document>  collection= db.getCollection("NEWSLETTER_REC");

            
            //Inserting sample records by creating documents.
            Document doc =new Document("Customer's email",email);
            collection.insertOne(doc);
           
           }catch (Exception e) {
                out.print(e);
            }
       %>
        <div>
        <img src="./img/io.gif" alt="image" height="300px">
        <p>Thankyou your response has been recorded!</p>
        <br><br>
        <a href="index.html">GO BACK</a>
    </div>
    </body>
</html>
