<%-- 
    Document   : fetchnewsemails
    Created on : Feb 5, 2023, 7:49:20 PM
    Author     : Satish
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.mongodb.client.FindIterable"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link
    href="https://fonts.googleapis.com/css2?family=Bangers&family=Fredoka+One&family=Poppins:wght@300;400&family=Titan+One&display=swap"
    rel="stylesheet">
        <title>NEWS LETTER EMAILS</title>
    </head>
     <style>
       h1{
           
            font-family: 'Poppins', sans-serif;
            text-align: center;
              background-color: #004085;
              color: white;
        }
        p{
             font-family: 'Poppins', sans-serif;
            font-size:larger;
            text-align: center;
          
        }
        </style>
    <body>
                <h1><marquee behavior="scroll" direction="right" scrollamount="10">NEWS LETTER EMAILS</marquee></h1>
        
        <%
          
		// Creating a Mongo client 
		MongoClient mongoClient = new MongoClient( "localhost" , 27017 ); 
		System.out.println("Created Mongo Connection successfully");
                
                MongoDatabase db = mongoClient.getDatabase("BURGERKING_DB");
		System.out.println("Get database is successful");
                
                MongoCollection<Document>  collection= db.getCollection("NEWSLETTER_REC");
		System.out.println("collection created ");
                
                //Listing All Mongo Documents in Collection
		FindIterable<Document> iterDoc = collection.find();
		int i = 1;
		// Getting the iterator
		System.out.println("Listing All Mongo Documents");
		Iterator it = iterDoc.iterator();
		while (it.hasNext()) {
                    out.print("<p>" + it.next() + "</p>");
                    out.print("<br><hr>");
//		    System.out.println(it.next());
		    i++;
		}
        %>

    </body>
</html>