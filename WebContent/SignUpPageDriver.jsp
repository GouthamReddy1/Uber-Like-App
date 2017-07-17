<!DOCTYPE html>
<html   lang="en">
    <head>
        <title>Registration Form</title>
 
        <meta charset="UTF-8" />
        <link rel="stylesheet" type="text/css" href="default.css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  		<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  		
  	</head>
    <body>  

    	<script type="text/javascript">
    	
    	
//     	$(document).ready(function(){
    		
//     	});
    	$(document).ready(function (){
    		 //alert("message");
    		    $( "#datepicker" ).datepicker({ changeMonth: true,minDate: +1 });
    		    $("#datepickerdob").datepicker({maxDate: "-1D"});
    		    
    		  //  alert("message23");
    		  });
		   
    	function validateForm() {
			
        
            
	           if (!($('input[name=gender]:checked').length > 0)) {
	        	  alert('gender is required');
	        	   
	        	  
	        	    return false;
	        	}
	           
	           if(!(document.getElementById("emailID").value==document.getElementById("repeatEmailId").value)){
	        	  alert('Entered email id does not match');
	        	   return false;
	        	   
	           }
	          if(!(document.getElementById("userPasswordId").value==document.getElementById("repeatUserPassword").value)){
	        	  alert('Entered password does not match');
	        	   return false;
	        	   
	           }
	          
	         
	         	return true;
	          //  return false;
        }
	        
	     

        </script>
    
        <form  action="Controller"  class="register" id="registrationForm" onsubmit="return validateForm();">
            <h1>Registration</h1>
            <fieldset class="row1">
                <legend>Account Details
                </legend>
                <p>
                    <label>User Id *</label>
                    <input type="text" name="userName" maxlength="10" required/>                
                </p>
                <p>
                    <label>Email *
                    </label>
                    <input type="email" name="emailId" id="emailID" maxlength="30"  placeholder="me@example.com" required/>
                    <label>Repeat email *
                    </label>
                    <input type="email" name="repeatEmailId" id="repeatEmailId" placeholder="me@example.com" required/>
                </p>
                <p>
                    <label>Password*
                    </label>
                    <input type="text" name="userPassword" maxlength="25" required id="userPasswordId"/>
                    <label>Repeat Password*
                    </label>
                    <input type="text" name="repeatUserPassword"  required id="repeatUserPassword"/>
                    <label class="obinfo">* obligatory fields
                    </label>
                </p>
            </fieldset>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>First Name *
                    </label>
                    <input type="text" name="fName" maxlength="30" class="long"  required/>
                </p>
                <p>
                    <label>Last Name *
                    </label>
                    <input type="text" name="lName" maxlength="30" class="long" required/>
                </p>
                <p>
                    <label>Phone *
                    </label>
                    <input type="text" name="phoneNo" maxlength="10" required/>
                </p>
                
                <p>
                    <label>Gender *</label>
                    <input type="radio" name="gender" value="M">
                    <label class="gender">Male</label>
                    <input type="radio" value="F" name="gender">
                    <label class="gender">Female</label>
                    <div id="genderErrormessage"></div>
                </p>
                <p>
                    <label>Birthdate *
                    </label>
                    <input type="text" name="dob" maxlength="0"  id="datepickerdob" placeholder="MM/DD/YYYY" required/>
                </p>
               
            </fieldset>
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                <p>
                    <label class="optional">Street
                    </label>
                    <input type="text" class="long" maxlength="30" name="street" required/>
                </p>
                <p>
                    <label>City *
                    </label>
                    <input type="text" class="long" maxlength="30"  name="city" required/>
                </p>
                <p>
                    <label>State *
                    </label>
                    <input type="text" class="long" maxlength="30"  name="state" required/>
                </p>
                <p>
                    <label>Country *
                    </label>
                    <select  name="country" required
                    >
                        <option>
                        </option>
                        <option value="United States">United States
                        </option>
                    </select>
                </p>
               
                <div class="infobox"><h4>Helpful Information</h4>
                    <p>Please fill the information correctly.</p>
                </div>
            </fieldset>
            
            <fieldset class="row1">
                <legend>Driver Information
            	</legend>
            	 <p>
                    <label>License No. *
                    </label>
                    <input type="text" name="dlNo" maxlength="10"  id="long" required/>
                <!-- </p>
                <p> -->
                    <label>Car Make *
                    </label>
                    <input type="text" name="carMakeModel" maxlength="20"  id="long" required/>
                </p>
                <p> 
                    <label>Car Model *
                    </label>
                    <input type="text" name="carModel" maxlength="10"  id="long" required/>
                <!-- </p>
                <p> -->
                    <label>License plate *
                    </label>
                    <input type="text" name="carNumber" maxlength="10"  id="long" required/>
                </p>
            </fieldset>
            
            
            <fieldset class="row1">
                <legend>Credit Card Info
            	</legend>
            	 <p>
                    <label>Card No *
                    </label>
                    <input type="number" name="cardNo" maxlength="16" id="long" max="99999999999999"  required/>
                <!-- </p>
                <p> -->
                    <label>Cvv No *
                    </label>
                    <input type="number" name="cvvNo" max="999" id="long"  required/>
                </p>
                <p>
                    <label>Expiry Date *
                    </label>
                    <input type="text" name="expDate" maxlength="10"  id="datepicker" required/>
                </p>
            </fieldset>
            
            <fieldset class="row4">
                <legend>Terms and Mailing
                </legend>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>*  I accept the <a href="#">Terms and Conditions</a></label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>I want to receive personalized offers by your site</label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>Allow partners to send me personalized offers and related services</label>
                </p>
            </fieldset>
            
            <input type="submit" class="button" name="myButton" value="Register &raquo;" ></input>
           <!--  <input type="cancel" class="button" name="Cancel" value="cancel &raquo;"  onclick="NewFile.html"></input> -->
            <a href='HomePage.html' class="button alt">Cancel</a>
            <input type="hidden" name="action" value="DriverSignUp">
        </form>
       
    </body>
</html>





