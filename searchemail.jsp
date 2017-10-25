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

<%! Connection con=null;int row;String qid;String uid;String title;String category;String date;String post;  %>
<%-- 
<jsp:useBean id="Cn" scope="session" class="com.Connect" /> 
--%>
<% 
uid=request.getParameter("t1");
   try
        {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rmi");
    //Cn.setCon("oracle.jdbc.driver.OracleDriver","jdbc:oracle:thin:@localhost:1521:xe","system","rmi");
 //Connection con=Cn.getCon();
//session.putValue("Connect",Cn);
PreparedStatement psm = con.prepareStatement("select * from postq where userid=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
psm.setString(1,uid);
ResultSet rs=psm.executeQuery();
rs.last();
row=rs.getRow();
if(row <= 0)
 {
%>
<B>No Question is Posted by This Id</b><br/><hr>
<%
}
else{
rs.beforeFirst();
while(rs.next())
 {
title=rs.getString("posttitle");
uid=rs.getString("userid");
qid=rs.getString("qid");
category=rs.getString("category");
date=rs.getString("pdate");
post=rs.getString("post");
%>     
   <h1><%="Forum Page "+title %></h1>
    <b style="color:red;"> <%= "Question Posted - "+post %></b><br>
<i><%="Posted by "+uid+" as on "+date+"in category "+category %></i><br/>
<% 
}
}
} catch(Exception e ) { e.printStackTrace(); }

try{
PreparedStatement psm1 = con.prepareStatement("select * from replyq where email=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

psm1.setString(1,uid);

ResultSet rs1=psm1.executeQuery();
rs1.last();
 row=rs1.getRow();
  if(row <= 0)
  {
%>
<B>No One Replied from This ID </B><br/><hr>
<%
 }
else if(row > 0)
 {
PreparedStatement psm2=con.prepareStatement("select * from postq,replyq where replyq.email=? and postq.qid=replyq.qid");
psm2.setString(1,uid);
ResultSet rs2=psm2.executeQuery();
 while(rs2.next())
   {
String name=rs2.getString("name");
String reply=rs2.getString("reply");
String date1=rs2.getString("rdate");
String userid=rs2.getString("userid");
category=rs2.getString("category");
date=rs2.getString("pdate");
post=rs2.getString("post");


%>
<b style="color:red;"> <%= "Question Posted - "+post %></b><br>
<i><%="Posted By :-"+userid+" , as on "+date+"in category "+category %></i><br/>
<b style="color:blue;"><%= "Reply :- "+reply %></b><br/>
<b style="color:pink;"><%= "Reply by :-"+name +" as on :-"+date1 %></b><br/>
<%

  }
 }

       } catch(Exception e ) { e.printStackTrace(); }
       
       %>
   </body></html>


