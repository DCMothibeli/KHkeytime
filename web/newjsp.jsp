<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>File Upload</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            $("#date").datepicker({dateFormat: 'dd-MM-yy',
                  onSelect: function (selected) {


                           
                            }
            
            
    
    });
            
            
            
function Confirm(form){
alert("Record insert successfully!"); 
form.submit();
}
        </script>
    </head>
    
    <body>
        <form name="form" method="POST" action="FileUpload" enctype="multipart/form-data" >
<table>
        <tr><td>Book Id</td>
        <td><input type="text" name="bookId" id="date" class="date"/></td>
        <tr><td>Book Pdf</td> 
            <td><input type="file" name="file" id="file" /> </td>
        </tr>
        <tr>
        <td colspan="2">
            <input type="submit" value="Upload" name="upload" id="upload" onclick="Confirm(this.form)"/> </td>
        </tr>
   </table>
        </form>
    </body>
</html>