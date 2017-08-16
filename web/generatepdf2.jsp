<%-- 
    Document   : generatepdf2
    Created on : Aug 1, 2017, 8:59:24 AM
    Author     : ConstanceMothibeli
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- jQuery 2.0.2 -->
    <script type="application/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

    <script type="application/javascript" src="tableExport.js"></script>
    <script type="application/javascript" src="jquery.base64.js"></script>
    <script type="application/javascript" src="jspdf/libs/sprintf.js"></script>
    <script type="application/javascript" src="jspdf/jspdf.js"></script>
    <script type="application/javascript" src="jspdf/libs/base64.js"></script>
</head>

<body>
<table id="example">
        <thead>
                    <tr>  
                        <th>User Name</th>
                        <th>Project Name</th>
                        <th> Task</th>
                        <th> Date</th>
                         <th>Hours</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${timesheets}" var="timesheet">
                    <tr>
                         <td>dikeledi</td>
                       
                        <td>nivi</td>
                        <td>emmanule </td>
                        <td>sreeni </td>
                        <td>siva </td>
                    </tr>
                              </c:forEach>
                </tbody>
    

</table>    
<a href="#" onclick ="$('#example').tableExport({type:'pdf',escape:'false'});">As PDF</a>
</body>