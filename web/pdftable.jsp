<%-- 
    Document   : pdftable
    Created on : Aug 2, 2017, 9:55:43 AM
    Author     : ConstanceMothibeli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>

<%
       String name[]=request.getParameterValues("name");
       String address[]=request.getParameterValues("address");
       try{
       Document document=new Document();
       PdfWriter.getInstance(document,new FileOutputStream("C:/data.pdf"));
       document.open();
       PdfPTable table=new PdfPTable(2);
       table.addCell("Name");
       table.addCell("Address");
       for(int i=0;i<name.length;i++){
       table.addCell(name[i]);
       table.addCell(addres[i]);
       }
       document.add(table);
       document.close();
       }
       catch(Exception e){}
  %>