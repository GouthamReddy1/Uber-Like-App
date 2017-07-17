<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        
    <title>Dynamic Scheduling - Sign Up</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="HomePage.css">
  </head>
    
    <body style="background-color: #666699;">
        <div id="container" style="padding-top: 1cm;">
        <center>
            <form style="padding-top: 1cm;background-color: #e0e0eb;">
            <h3 style="padding-bottom: 1cm;">Dynamic Scheduling - Registration !!!</h3>
            <table class="line">
            
                <tr><td><label for="firstname">First Name *: </label></td><td><input type="text" class="controls" id="firstname" /></td></tr>
                 
                 <tr><td><label for="lastname">Last Name *: </label></td><td><input type="text" class="controls" id="lastname" /></td></tr>
                  <tr><td><label for="Email">Email *: </label></td><td><input type="text" class="controls" id="username" /></td></tr>
                  
                <tr><td><label for="pwd">Password *: </label></td><td><input type="password" class="controls" id="pwd" /></td></tr>
                <tr><td><label for="pwd">Confirm Password *: </label></td><td><input type="password" class="controls" id="pwd" /></td></tr>
                <tr><td><label for="tel">Telephone*: </label></td><td><input type="text" class="controls" id="tel" /></td></tr>
                </table>
                  <p style="padding-top: 1cm;padding-bottom: 1cm;">Note: Please make sure your details are correct before submitting form and that all fields marked with * are completed!.</p>
               <input id="signupbtn" type="submit" class="buttons" value="Sign Up" />
               <input id="signupcancel" type=button class="buttons" onClick="parent.location='http://localhost:8087/New/test.jsp'" value="Cancel">
                
 
            </form>
            </center>
        </div>
    </body>
</html>