<html>
<head>

<link rel="stylesheet" type="text/css" href="okf.css">
</head>
 <%@ page import="java.io.IOException" %>
    <%@ page import="java.net.URI" %>
    <%@ page import="java.net.http.HttpClient" %>
    <%@ page import="java.net.http.HttpRequest" %>
    <%@ page import="java.net.http.HttpResponse" %>
    <%@ page import="org.json.*" %>
    <%@ page import="java.net.*" %>
 
 <%
String re1=request.getParameter("1re");  
 String start =(String)session.getAttribute("staa");
  String end =(String)session.getAttribute("endd");
String red1=request.getParameter("1red");  
String re2=request.getParameter("2re");  
String red2=request.getParameter("2red");  
String detexx=request.getParameter("detext");
String detex=detexx.replace("/","_");
String firs=detex.substring(start.length());
String det=firs.substring(0,firs.length()-end.length());
String detext=det+"=";
//out.print(detext);
String key=request.getParameter("key");
//out.print("welcome "+re1+red1+re2+red2+detext);


 HttpClient client = HttpClient.newHttpClient();
       HttpRequest request2 = HttpRequest.newBuilder()
                .uri(URI.create("http://127.0.0.1:8000/give_it/"+key+"/"+detext))
                .build();

        HttpResponse<String> response2 = client.send(request2,
                HttpResponse.BodyHandlers.ofString());
        
       // System.out.print(response1.body());
       JSONObject obj1 = new JSONObject(response2.body());
       String de=obj1.getString("message for you"); 
       String s2=de.replace(red2,re2);
String s=s2.replace(red1,re1);
String ss=s.replace("!"," ");
//out.print(s);
      %>
     <div class="output">
    Here you go the Decrypted message
     <br>
     <br>
       <%= ss %> 
 </div>
      <jsp:include page="index.jsp" />   

      </html>
