<html>
<head>
		 <link rel="stylesheet" type="text/css" href="okf.css">
</head>
<body> 
<%  String mess =(String)session.getAttribute("ency");
 String fi=mess.replace("=","");
 
String start=request.getParameter("sta");  
String end=request.getParameter("end");  
 String S=start+fi+end;
//out.print(S);
  %>
 <br>

 <div class="output">
    Here you go the encrypted message
     <br>
     <br>
       <%= S %> 
 </div>
<jsp:include page="index.jsp" />   

 </body>
 </html>
