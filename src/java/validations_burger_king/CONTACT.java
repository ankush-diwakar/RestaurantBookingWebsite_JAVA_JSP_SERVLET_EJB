/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package validations_burger_king;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.bson.Document;

@WebServlet(name = "CONTACT", urlPatterns = {"/CONTACT"})
public class CONTACT extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             String Name = request.getParameter("name");
             String Email = request.getParameter("email");
             String Subject = request.getParameter("sub");
             String Msg = request.getParameter("msg");
             
             // Creating a Mongo client 
            MongoClient mongoClient = new MongoClient( "localhost" , 27017 ); 
  
            
            MongoDatabase db = mongoClient.getDatabase("BURGERKING_DB");
   
            
            //creating collection or get collection if exists.
            MongoCollection<Document>  collection= db.getCollection("CONTACT_REC");
       
            
            //Inserting sample records by creating documents.
            Document doc =new Document("name",Name);
            doc.append("Email",Email);  
            doc.append("Subject",Subject);  
            doc.append("Message", Msg);
            
            collection.insertOne(doc);
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.print(" <link\n" +
"        href=\"https://fonts.googleapis.com/css2?family=Bangers&family=Fredoka+One&family=Poppins:wght@300;400&family=Titan+One&display=swap\"\n" +
"        rel=\"stylesheet\">");
            out.println("<title>Servlet CONTACT</title>"); 
            out.print("<style> "
                    + "DIV{\n" +
"            font-family: 'Poppins', sans-serif;\n" +
"            color: black;\n" +
              "text-align: center;" +
"            font-size: largest;\n" +
                 
"        }</style>");
            out.println("</head>");
            out.println("<body>");
            out.print("<DIV>");
            out.print(
"        <p style=\"font-size: xx-large;\">Thankyou your response has been recorded!</p>\n" +
"        <br><br>\n" );
              out.print("</DIV>");
            out.println("<h1>Servlet CONTACT at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
