<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule page</title>  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" type="text/css" href="SchedulePage.css">
  <!-- <link rel="stylesheet" href="Schedule.css"> -->
  <script>
  /* $(document).ready(function(){
	    $("#datepicker1").click(function(){
	    	 $( "#datepicker1" ).datepicker();
	    });
  });
  $(document).ready(function(){
	    $("#datepicker2").click(function(){
	    	 $( "#datepicker1" ).datepicker();
	    });
	}); */
	function a()
	{
		 $("#datepicker1").datepicker();
		 $('#datepicker1').datepicker('show');
	} 
	function b()
	{
		 $("#datepicker2").datepicker();
		 $('#datepicker2').datepicker('show');
	}
	
   </script>

</head>

<body >
<h1 align="center">SCHEDULE YOUR RIDE</h1>
<br>
<form method="post" action="Controller?action=schedule" >
<table align="center">
<tr><td>From Date:</td><td><input type="text" id="datepicker1" onclick="a()"></td></tr>
<tr><td>To Date:</td><td><input type="text" id="datepicker2" onclick="b()"></td></tr>
<tr><td>Time(HHMM):</td><td><select name="hour">
<option value=""></option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>

</select>
<select name="mins">
<option value=""></option>
<option value="00">00</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
<option value="32">32</option>
<option value="33">33</option>
<option value="34">34</option>
<option value="35">35</option>
<option value="36">36</option>
<option value="37">37</option>
<option value="38">38</option>
<option value="39">39</option>
<option value="40">40</option>
<option value="41">41</option>
<option value="42">42</option>
<option value="43">43</option>
<option value="44">44</option>
<option value="45">45</option>
<option value="46">46</option>
<option value="47">47</option>
<option value="48">48</option>
<option value="49">49</option>
<option value="50">50</option>
<option value="51">51</option>
<option value="52">52</option>
<option value="53">53</option>
<option value="54">54</option>
<option value="55">55</option>
<option value="56">56</option>
<option value="57">57</option>
<option value="58">58</option>
<option value="59">59</option>


</select>
</td></tr>
<tr><td>DayOfWeek:</td><td><input type="checkbox" name="Dayofweek" value="Sun">Sun
<input type="checkbox" name="Dayofweek" value="Mon">Mon
<input type="checkbox" name="Dayofweek" value="Tue">Tue
<input type="checkbox" name="Dayofweek" value="Wed">Wed
<input type="checkbox" name="Dayofweek" value="Thu">Thu
<input type="checkbox" name="Dayofweek" value="Fri">Fri
<input type="checkbox" name="Dayofweek" value="Sat">Sat</td></tr>

<tr><td><input class="input1" type="submit" name="submit" value="submit"></td><td><input class="input1" type="reset" name="Reset" value="Reset"></td></tr>
</table>

</form>
</body>
</html>