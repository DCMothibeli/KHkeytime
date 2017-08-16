<%@ page contentType="application/pdf" %>
<%@ page pageEncoding="iso-8859-1" %>
<%@ page language="java" import="java.sql.*,java.util.*,java.io.*" %>
<%!  
     // connection method for jdbc.
     Connection getConnection() throws Exception {
         
          //String url = "jdbc:microsoft:sqlserver://server-name:1433;DatabaseName=dbname"; // replase dbname with actual name
          
          String driver = "com.mysql.jdbc.Driver";
          String url = "jdbc:mysql://localhost:3306/";
          String username = "root";
          String password = "Dikengkeng123";
          Class.forName(driver);
          Connection conn = DriverManager.getConnection(url, username, password);
          return conn;
     }
  
     byte[] getBLOB(String _rptId) throws Exception {
          Connection conn = null;
          ResultSet rs = null;
          PreparedStatement pstmt = null;
          String query = "SELECT pdf FROM b userpdfd where Id = '3173'";
          Blob blob = null;

          try {
               conn = getConnection();
               pstmt = conn.prepareStatement(query);
               pstmt.setString(1, _rptId); // assign the user requeested pdf id to the above prepared statement.
               rs = pstmt.executeQuery();
               rs.next();
               blob = rs.getBlob("pdf"); // retrieve the blob stored as column PDF.
          } catch (Exception e) {
          } finally {
               rs.close();
               pstmt.close();
               conn.close();
          }
          if (blob != null) 
               return blob.getBytes((long)1, (int)blob.length());
          else
               return null;
     }
%>
<% 
     // scriptlet part.
     ServletOutputStream os = response.getOutputStream();
     byte[] b = getBLOB(request.getParameter("rptId"));  // this line gets the report uid from the jsp call url.
     os.write(b);
     os.close();
     out.clear();
     out = pageContext.pushBody();
%>  
