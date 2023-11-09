<%-- 
    Document   : BOOKING_BEANS
    Created on : Feb 2, 2023, 8:18:01 PM
    Author     : Satish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BOOKING_BEANS PAGE</title>
    </head>
    <body>
        <p>hello</p>
      <jsp:useBean id="table_booking" class="validations_burger_king.BOOKING_CLASS">
            <jsp:setProperty name="table_booking" property="*"/>
        </jsp:useBean>
        
        <p>Student's First_name    <jsp:getProperty name="table_booking" property="Name"/> </p>
        <p>hello</p>
        <p>Student's mail    <jsp:getProperty name="table_booking" property="Email"/> </p>
        <p>hello</p>
        <p>Student's mob no    <jsp:getProperty name="table_booking" property="Mob"/> </p>
        <p>Student's date    <jsp:getProperty name="table_booking" property="Date"/> </p>
        <p>Student's time   <jsp:getProperty name="table_booking" property="Time"/> </p>
        <p>Student's no of guests   <jsp:getProperty name="table_booking" property="Guest"/> </p>
    </body>
</html>
