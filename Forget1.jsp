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
<tr><td width="100%"><img src='C:/apache-tomcat-5.5.27/webapps/onlinetest/images/talkjavalogo.jpg' width=100% /></td></tr>
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




<Form method=post action='http://localhost:8084/onlinetest/Forget2.jsp'>
<%! String uid;String sq; %>
<% uid = request.getParameter("x");
sq = request.getParameter("y");
%>
<b style='color:red;font-size:2em;'> <%= "Hello"+uid+" ur secret question is:-"+sq %> </b><br>
<%="<input type=hidden name=h1 value="+uid+">"%>
<%="<input type=hidden name=h2 value="+sq+">"%>
Enter secret answer:<input type=text name=t1><br>
  <input type=SUBMIT>
   </Form></body></html>


