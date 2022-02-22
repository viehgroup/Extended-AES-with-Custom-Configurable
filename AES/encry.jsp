<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.IOException" %>
    <%@ page import="java.net.URI" %>
    <%@ page import="java.net.http.HttpClient" %>
    <%@ page import="java.net.http.HttpRequest" %>
    <%@ page import="java.net.http.HttpResponse" %>
    <%@ page import="org.json.*" %>
 
 
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Home</title>
		<style>
		body{background:rgba(40,57,101,.9);
		box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
		}
		</style>
		
	</head>
	<body>
		<%
        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request1 = HttpRequest.newBuilder()
                .uri(URI.create("http://127.0.0.1:8000/got_it/key/lolbye"))
                .build();

        HttpResponse<String> response1 = client.send(request1,
                HttpResponse.BodyHandlers.ofString());
        
       // System.out.print(response1.body());
       JSONObject obj = new JSONObject(response1.body());
    String en=obj.getString("message for you");
       out.println("Encrypted:"+obj.getString("message for you"));  
    
    
        HttpRequest request2 = HttpRequest.newBuilder()
                .uri(URI.create("http://127.0.0.1:8000/give_it/key/"+en))
                .build();

        HttpResponse<String> response2 = client.send(request2,
                HttpResponse.BodyHandlers.ofString());
        
       // System.out.print(response1.body());
       JSONObject obj1 = new JSONObject(response2.body());
       out.println("Encrypted:"+obj1.getString("message for you")); 
		 %>
		 
	</body>
</html>

