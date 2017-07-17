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
        
        
    <title>Dynamic Scheduling - Login</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="HomePage.css">
  </head>
    
    <!-- <body background="https://www.google.com/search?q=cabs+images&biw=1366&bih=653&source=lnms&tbm=isch&sa=X&ved=0CAYQ_AUoAWoVChMIipi21qHUyAIVS-ZjCh2uOgCJ#imgrc=aXEym_tA1ON1SM%3A"> -->
    <body background="images/car.png">
   <!--  <img alt="picture1" src="WebContent/images/car.png"> -->
        <div id="container">
            <form>
                <h3>Dynamic Scheduling - Login !!!</h3>
                <div class="line"><label for="username">Username *: </label><input type="text" class="controls" id="username" /></div></br>
                  
                <div class="line"><label for="pwd">Password *: </label><input type="password" class="controls" id="pwd" /></div></br>
                
               <input id="loginbtn" type="submit" class="buttons" value="Login" />
               <!-- <input type="submit" class="controls" value="Cancel" />  http://localhost:8082/New/test.jsp -->
               <input id="logincancel" type=button class="buttons" onClick="parent.location='http://localhost:8087/New/test.jsp'" value="Cancel">
                
 
                
            </form>
        </div>
    </body>
</html>