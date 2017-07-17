<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

</head>
<script type="text/javascript">
function validate() {
		

	if (document.forms["Login"]["username"].value == "") {
		alert("Please provide your username !!");

		return false;
	}

	
	
	if (document.forms["Login"]["password"].value == "") {
		alert("Please provide your password !!");

		return false;
	}
	//alert("message");
	var radios = document.getElementsByName('userType');
	if (!(radios[0].checked || radios[1].checked)) {
		return false;
	}else if(radios[0].checked){
		<%session.setAttribute("USERTYPE", "USER");%>
	}else if(radios[1].checked){
		<%session.setAttribute("USERTYPE", "DRIVER");%>
	}
	return true;
}
</script>
<body bgcolor="beige">

	<center><h1>Login Page</h1></center>
	<center>
		<h2>SignUp Details</h2>
		<form name="Login" action="Controller" method="post"  >
			<br />
			UserName:<input type="text" name="username" id="userId" > <br />
			Password:<input type="password" name="password"> <br />
			<input type="reset" value="Reset"> 
			<input type="submit" value="Submit" onclick="return(validate());" >
			<input type="hidden" name="action" value="login" /><br>
			<label>User Type :</label><input type="radio" name="userType" value="User"><label>Rider</label><input type="radio" name="userType" value="Driver"><label>Driver</label>
		</form>
	</center>
</body>
</html>