<html>
<link rel="stylesheet" href="textc.css">

 <%@ page import="java.io.IOException" %>
    <%@ page import="java.net.URI" %>
    <%@ page import="java.net.http.HttpClient" %>
    <%@ page import="java.net.http.HttpRequest" %>
    <%@ page import="java.net.http.HttpResponse" %>
    <%@ page import="org.json.*" %>
 
 <%
String re1=request.getParameter("1re");  

String red1=request.getParameter("1red");  
String re2=request.getParameter("2re");  
String red2=request.getParameter("2red");  
String entextx=request.getParameter("entext"); 
String entext=entextx.replace(" ","!");
String key=request.getParameter("key");
//out.print("welcome "+re1+red1+re2+red2+entext);
String s=entext.replace(re1,red1);
String s2=s.replace(re2,red2);

 HttpClient client = HttpClient.newHttpClient();
        HttpRequest request1 = HttpRequest.newBuilder()
                .uri(URI.create("http://127.0.0.1:8000/got_it/"+key+"/"+s2))
                .build();

        HttpResponse<String> response1 = client.send(request1,
                HttpResponse.BodyHandlers.ofString());
        
       // System.out.print(response1.body());
       JSONObject obj = new JSONObject(response1.body());
    String en=obj.getString("message for you");
       //out.println("Encrypted:"+obj.getString("message for you"));
//out.print(s2);

session.setAttribute("ency",en);
      %>
    <div class="bi">
   Wohh wait lets add padding bits for more security<form action="encrypted.jsp" name=login_form method="POST"><br><br>
		starting<input id="1re" type="text" name="sta" ><br><br>
		ending<input id="2re" type="text" name="end"><br>
		</br>
<input type="submit" class="button" value="submit">
</div>
      </html>
