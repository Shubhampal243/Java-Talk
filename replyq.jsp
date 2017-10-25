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


<%@ page language ="java" import = "java.sql.*,java.util.Date" %>

<%! String qid;String name;String email;String date;String reply;  %>
<%-- 
<jsp:useBean id="Cn" scope="session" class="com.Connect" /> 
--%>
<% 
Date d=new Date();
int day=d.getDate();
int month=d.getMonth()+1;
int year=d.getYear()-100;

qid = request.getParameter("h");
name = request.getParameter("t1");
email= request.getParameter("t2");
reply = request.getParameter("ta");
date=""+day+"-"+month+"-"+year;
   try
        {
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rmi");
    //Cn.setCon("oracle.jdbc.driver.OracleDriver","jdbc:oracle:thin:@localhost:1521:xe","system","rmi");
 //Connection con=Cn.getCon();
//session.putValue("Connect",Cn);
PreparedStatement psm = con.prepareStatement("insert into replyq values(seq_r.nextval,?,?,?,?,?)");
          psm.setString(1, qid);
          psm.setString(2, name);
psm.setString(3,email);
psm.setString(4,reply);
psm.setString(5,date);
          psm.executeUpdate();
con.commit();

       } catch(Exception e ) { e.printStackTrace(); }
       
       %>
<h1>Forum Page</h1>
    <b style="color:red;font-size:2em;"> <%= "Thanks for giving reply to this Question, Join Forum..."%></b><br>

   <A href = "http://localhost:8084/onlinetest/joinforum.jsp"> Join Forum Now </A>

   
   </body></html>


