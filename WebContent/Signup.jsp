<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
       <!--  <style type="text/css">
 
            body {font-family:Arial, Sans-Serif;}
 
            #container {width:900px; margin:0 auto;}
 
            /* Nicely lines up the labels. */
            form label {display:inline-block; width:160px;}
 
            /* You could add a class to all the input boxes instead, if you like. That would be safer, and more backwards-compatible */
            form input[type="text"],
            form input[type="password"],
            form input[type="email"] {width:160px;}
 
            form .line {clear:both;}
            form .line.submit {text-align:right;}
 
        </style>
        <link rel="stylesheet" type="text/css" href="HomePage.css"> -->
        
        
    <title>Dynamic Scheduling - Sign Up</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="HomePage.css">
  </head>
    
    <body background="images/car.png">
        <div id="container">
            <form>
                <h3>Dynamic Scheduling - Registration !!!</h3>
                <div class="line"><label for="firstname">First Name *: </label><input type="text" class="controls" id="firstname" /></div></br>
                 <div class="line"><label for="lastname">Last Name *: </label><input type="text" class="controls" id="lastname" /></div></br>
                  <div class="line"><label for="Email">Email *: </label><input type="text" class="controls" id="username" /></div></br>
                  
                <div class="line"><label for="pwd">Password *: </label><input type="password" class="controls" id="pwd" /></div></br>
                <div class="line"><label for="pwd">Confirm Password *: </label><input type="password" class="controls" id="pwd" /></div></br>
                <!-- You may want to consider adding a "confirm" password box also -->
               
                
                <!-- <div class="line"><label for="dob">Date of Birth *: </label><input type="text" class="controls" id="dob" /></div></br> -->
               <!--  <div class="line"><label for="email">Email *: </label><input type="email" class="controls" id="email" /></div></br> -->
                <!-- Valid input types: http://www.w3schools.com/html5/html5_form_input_types.asp -->
                <div class="line"><label for="tel">Telephone*: </label><input type="text" class="controls" id="tel" /></div></br>
                <!-- <div class="line"><label for="add">Address *: </label><input type="text" class="controls" id="add" /></div></br>
                <div class="line"><label for="add1">City *: </label><input type="text" class="controls" id="add1" /></div></br>
                
                
                
                <div class="line"><label for="ptc">Post Code *: </label><input type="text" class="controls" id="ptc" /></div></br> -->
                <p>Note: Please make sure your details are correct before submitting form and that all fields marked with * are completed!.</p>
               <input id="signupbtn" type="submit" class="buttons" value="Sign Up" />
               <!-- <input type="submit" class="controls" value="Cancel" />  http://localhost:8082/New/test.jsp -->
               <input id="signupcancel" type=button class="buttons" onClick="parent.location='http://localhost:8087/New/test.jsp'" value="Cancel">
                
 
                
            </form>
        </div>
    </body>
</html>