<!DOCTYPE html>
<html>
<head>
<title>Print Fax View</title>
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<script type="text/javascript" src="jspdf/jspdf.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.addimage.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.cell.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.from_html.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.ie_below_9_shim.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.javascript.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.sillysvgrenderer.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.split_text_to_size.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.standard_fonts_metrics.js"></script>
<script type="text/javascript" src="jspdf/jspdf.PLUGINTEMPLATE.js"></script>
<script type="text/javascript" src="lib/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        var specialElementHandlers = {
            '#editor': function (element,renderer) {
                return true;
            }
        };
        $('#cmd').click(function () {
            var doc = new jsPDF();
            var source = $('#target').html();
            var specialElementHandlers = {
                '#bypassme': function (element, renderer) {
                    return true;
                }
            };
            doc.fromHTML(source, 0.5, 0.5, {
                'width': 75,'elementHandlers': specialElementHandlers
            });
            doc.output("dataurlnewwindow");
        });
    });
</script>
</head>

<body id="target">
         <button id="cmd">generate PDF</button>
         <div> <p>Hello World </p> </div>
</body>
</html>