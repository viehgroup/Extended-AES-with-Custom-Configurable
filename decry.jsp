<html>
<link rel="stylesheet" href="textc.css">
<%
String start=request.getParameter("sta");  
String end=request.getParameter("end");  
session.setAttribute("staa",start);
session.setAttribute("endd",end); %>
<div class="bi">
<form action="validated.jsp" name=login_form method="POST"><br><br>
		<input id="1re" type="text" name="1re" >Replace with<input id="1red" type="text" name="1red" ><br><br>
		<input id="2re" type="text" name="2re" >Replace with<input id="2red" type="text" name="2red">
<br><br><br>
Enter the Encrypted:<input id="entext" type="text" name="detext">
Enter the Key for Decryption:<input id="entext" type="text" name="key">
<input type="submit" class="button" value="submit">
			</form>
			</div>
</html>
