<html>
<head>
<title>Welcome</title>
<style>
/* menubar */
#menu
  {
   margin: 0;
   padding: 0;
  }
  #menu li
  {
   margin: 0;
   padding: 0;
   list-style: none;
   float: left;
  }

  #menu li a
  {
   display: block;
   margin: 0 1px 0 0;
   padding: 4px 10px;
   width: 95px;
   background: black;
   color: white;
   text-align: center;
	font-weight:bolder;
  }


  #menu li a:hover
  {
   background: green;
  }
  #menu ul
  {
   position: absolute;
   visibility: hidden;
   margin: 0;
   padding: 0;
   background: grey;
   border: 1px solid white;
  }

  #menu ul a
  {
   //position: relative;
   //display: block;
   margin: 0;
   padding: 5px 10px;
   width: 80px;
   text-align: left;
   background: lightgrey;
   color: black;
  }
  #menu ul a:hover
  {
   background: #7f7fff;
  }





/* menubar */

body {background-color:grey;color:orange;font-family:'Lucida Fax';}
h1{font-family:'Lucida Handwriting';}

</style>
<script>

function sub()
 {
username1=document.getElementById('t1').value;
atpos = username1.indexOf("@");
   dotpos = username1.lastIndexOf(".");
password1=document.getElementById('t2').value;
name=document.getElementById('t3').value;
age=document.getElementById('t4').value;
pincode=document.getElementById('t5').value;
phno=document.getElementById('t6').value;
sq=document.getElementById('t7').value;
sa=document.getElementById('t8').value;
flag=true;
if(username1 != "" && password1 != "" && name != "" && age != "" && pincode != "" && phno != "" && sq != "" && sa != "")
{

if(! isNaN(username1)) //number hai to if block.ifnottrue
{
alert("pls enter text char in userid");
document.getElementById('t1').focus();
flag=false;
}
else{

if(username1.length < 3 || username1.length > 20)
{
alert("username should be greater than 3 but less than 20");
document.getElementById("t1").focus();
flag=false;
}
else{
if(password1.length < 3 || password1.length > 10)
{
alert("password should be greater than 3 but less than 10");
document.getElementById("t2").focus();
flag=false;
}
else{
if(atpos < 1 || ( dotpos - atpos < 2 ))
{
alert("you have not entered valid e-mail");
document.getElementById("t1").focus();
flag=false;
}
else{
if(isNaN(age))
 {
alert("pls enter Number char in Age");
document.getElementById('t4').focus();
flag=false;
 }
else{
if(isNaN(pincode))
 {
alert("pls enter Number char in pincode");
document.getElementById('t5').focus();
flag=false;
 }
else{
if(isNaN(phno))
 {
alert("pls enter Number char in Phone No");
document.getElementById('t6').focus();
flag=false;
 }
else{
if(! isNaN(name))
 {
alert("pls enter Alphabet char in Name");
document.getElementById('t3').focus();
flag=false;
 }
else{
if(! isNaN(sq))
 {
alert("pls enter Alphabet char in Question");
document.getElementById('t7').focus();
flag=false;
 }
else{
if(! isNaN(sa))
 {
alert("pls enter Alphabet char in Answer");
document.getElementById('t8').focus();
flag=false;
 }

else{
if(age.length < 0 || age.length > 3)
 {
alert("pls enter Age in between 0-100");
document.getElementById('t4').focus();
flag=false;
 }

else{
if(pincode.length < 6 || pincode.length > 6)
 {
alert("pls enter pincode of 6 char");
document.getElementById('t5').focus();
flag=false;
 }
else{
if(phno.length < 10 || phno.length > 10)
 {
alert("pls enter mobile of 10 digit");
document.getElementById('t6').focus();
flag=false;
 }
     } } } } } } } } }

}
}
}
}

else{

if(username1 == "")
{
alert("pls eneter uid");
document.getElementById('t1').focus();
flag=false;
}

else if(password1 == "")
{
alert("pls eneter password");
document.getElementById('t2').focus();
flag=false;
}

else if(name == "")
{
alert("pls eneter Name");
document.getElementById('t3').focus();
flag=false;
}
else if(age == "")
{
alert("pls eneter Age");
document.getElementById('t4').focus();
flag=false;
}
else if(pincode == "")
{
alert("pls eneter pincode");
document.getElementById('t5').focus();
flag=false;
}
else if(phno == "")
{
alert("pls eneter  mobile no");
document.getElementById('t6').focus();
flag=false;
}
else if(sq == "")
{
alert("pls eneter Secret Question");
document.getElementById('t7').focus();
flag=false;
}
else if(sa == "")
{
alert("pls eneter Secret Answer");
document.getElementById('t8').focus();
flag=false;
}




}
return flag;
}



/*menubar */

var Item;
var Timer;
document.onclick = CloseMenu;
function OpenMenu(Menu)
{
  // If there is an item that is open, close it.
  if (Item)
  {
   Item.style.visibility = "hidden";
  }
 
  // Obtain an item reference for the new menu.
  Item = document.getElementById(Menu);
 
  // Make it visible.
  Item.style.visibility = "visible";
}

function CloseMenu()
{
  // Set a timer for closing the menu.
  Timer = window.setTimeout(PerformClose, 500);
}
function PerformClose()
{
  // If the item is still open.
  if (Item)
  {
   // Close it.
   Item.style.visibility = "hidden";
  }
}

function KeepSubmenu()
{
  // Reset the timer.
  window.clearTimeout(Timer);
}


/*menubar */

</script>
</head>

<body>
<table border=0 cellpadding=0 cellspacing=0>
<tr><td width="100%"><img src='./images/talkjavalogo.JPG' width=100% /></td></tr>
</table>
<div>
<ul id="menu">
  <li id="Item1">
   <a href="http://localhost:8084/onlinetest/index.html"
     onmouseover="CloseMenu()">Home</a>
  </li>
  <li id="Item2">
   <a href="http://localhost:8084/onlinetest/aboutjavaforum.html"
     onmouseover="OpenMenu('Item2Submenu')">Events</a>
   <ul id="Item2Submenu"
     onmouseover="KeepSubmenu()"
     onmouseout="CloseMenu()">
     <a href="http://localhost:8084/onlinetest/joinforum.jsp">Join Forum</a>
     <a href="http://localhost:8084/onlinetest/startforum.jsp">Start Forum</a>
     <a href="http://localhost:8084/onlinetest/viewallforum.jsp">View AllForum</a>
   </ul>
  </li>
  <li id="Item3">
   <a href="http://localhost:8084/onlinetest/aboutGroup.html"
     onmouseover="OpenMenu('Item3Submenu')">
      Group
   </a>
   <ul id="Item3Submenu"
     onmouseover="KeepSubmenu()"
     onmouseout="CloseMenu()">
     <a href="http://localhost:8084/onlinetest/createGroup.jsp">Create Group</a>
     <a href="http://localhost:8084/onlinetest/viewGroup.jsp">View Group</a>
     <a href="http://localhost:8084/onlinetest/manageGroup.jsp">Manage Group</a>
   </ul>
  </li>
<li id="Item4">
   <a href="http://localhost:8084/onlinetest/onlinetest1.jsp"
     onmouseover="CloseMenu()">Test-Skill</a>
  </li>
<li id="Item5">
   <a href="http://localhost:8084/onlinetest/Registration.jsp"
     onmouseover="CloseMenu()">Register</a>
  </li>
<li id="Item6">
   <a href="http://localhost:8084/onlinetest/Login4.html"
     onmouseover="CloseMenu()">Login</a>
  </li>
<li id="Item7">
   <a href="http://localhost:8084/onlinetest/Logout.jsp"
     onmouseover="CloseMenu()">Logout</a>
  </li>
<li id="Item8">
   <a href="http://localhost:8084/onlinetest/search.html"
     onmouseover="CloseMenu()">Search</a>
  </li>

  
</ul><br/><br/><br/><br/>

</div>
<table border=0>

<form onsubmit="return sub()" method=post action='http://localhost:8084/onlinetest/Registration1.jsp'>
<%@ page language="java" import="java.util.*" %>

<%
Vector v =new Vector();
v=(Vector)session.getValue("reg");
if(v==null)
{

%>
<tr>
<td>Enter userid:</td><td><input type=text name=t1 id=t1 ></td>
</tr>
<tr>
<td>Enter password:</td><td><input type=text name=t2 id=t2 ></td>
</tr>
<tr>
<td>Enter Name:</td><td><input type=text name=t3 id=t3 ></td>
</tr>
<tr>
<td>Enter Age:</td><td><input type=text name=t4 id=t4 ></td>
</tr>
<tr>
<td>Enter Pincode:</td><td><input type=text name=t5 id=t5 ></td>
</tr>
<tr>
<td>Enter Mobile no:</td><td><input type=text name=t6 id=t6 ></td>
</tr>
<tr>
<td>Enter secret question:</td><td><input type=text name=t7 id=t7 ></td>
</tr>
<tr>
<td>Enter secret answer:</td><td><input type=text name=t8 id=t8 ></td>
</tr>
<tr>
<td><input type =submit></td>
</tr>

<%
}
else
{
%>
<tr><td><b> sorry uid already registered ..not available</b></td></tr>
<tr>
<td>Enter userid:</td><td><input type=text name=t1 id=t1 ></td>
</tr>
<tr>
<td>Enter password:</td><td><input type=text name=t2 id=t2 ></td>
</tr><tr>
<%="<td>Enter Name:</td><td><input type=text name=t3 id=t3   value="+v.elementAt(0)+" ></td>"%>
</tr><tr>
<%="<td>Enter Age:</td><td><input type=text name=t4 id=t4  value="+v.elementAt(1)+" ></td>"%>
</tr><tr>
<%="<td>Enter Pincode:</td><td><input type=text name=t5 id=t5  value="+v.elementAt(2)+" ></td>"%>
</tr><tr>
<%="<td>Enter Mobile no:</td><td><input type=text name=t6 id=t6  value="+v.elementAt(3)+"></td>"%>
</tr><tr>
<%="<td>Enter secret question:</td><td><input type=text name=t7 id=t7 value="+v.elementAt(4)+"></td>"%>
</tr><tr>
<%="<td>Enter secret answer:</td><td><input type=text name=t8 id=t8  value="+v.elementAt(5)+"></td>"%>
</tr>
<tr>
</td><input type =submit></td>
</tr>
<%
}
%>
</form>
</table>
</body>
</html>