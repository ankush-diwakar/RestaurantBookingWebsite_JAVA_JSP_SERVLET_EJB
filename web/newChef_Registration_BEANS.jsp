<%-- 
    Document   : newChef_Registration_BEANS
    Created on : Feb 3, 2023, 6:31:17 PM
    Author     : Satish
--%>

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
        <title>BEANS-NEW CHEF</title>
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
    <script>var nm = "${newcf.fname}";</script>
    <body>
        <jsp:useBean id="newcf" class="chef.new_chef">
            <jsp:setProperty name="newcf" property="*" /> 
        </jsp:useBean>
        <%  try {
                String name = newcf.getFname();
                String lname = newcf.getLname();
                String email = newcf.getEmail();
                String phone = newcf.getPhone();
                String address = newcf.getAddress();
                String address2 = newcf.getAddress2();
                String state = newcf.getState();
                String country= newcf.getCountry();
                String post = newcf.getPost();
                String area = newcf.getArea();
                // Creating a Mongo client 
                MongoClient mongoClient = new MongoClient("localhost", 27017);
                MongoDatabase db = mongoClient.getDatabase("BURGERKING_DB");
                //creating collection or get collection if exists.
                MongoCollection<Document> collection = db.getCollection("NEWCHEF_REC");
                //Inserting sample records by creating documents.
                Document doc = new Document("Firstname", name);
                doc.append("Lastname",lname);
                doc.append("Recipient's Email",email);
                doc.append("Recipient's Phone-number",phone);
                doc.append("Recipient's Address-Line-1",address);
                doc.append("Recipient's Address-Line-2",address2);
                doc.append("Recipient's State",state);
                doc.append("Recipient's Country",country);
                doc.append("Recipient's Postal code",post);
                doc.append("Recipient's Area Code",area);
                collection.insertOne(doc);
            } catch (Exception e) {
                out.print(e);
            }
        %>
        <div>
        <img src="./img/io.gif" alt="image" height="300px">
        <p>Thankyou your response has been recorded!</p>
        <br><br>
        <a href="team.html">GO BACK</a>
    </div>
    </body>
</html>
