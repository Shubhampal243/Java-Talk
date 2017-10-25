<html>
<body>

<%@ page language="java" import="java.sql.*,java.util.*"%>

<%! String uid; String pwd; String name;String age;String qty;String phno;String sq;String sa; %>
<%
uid=request.getParameter("t1");
pwd=request.getParameter("t2");
name=request.getParameter("t3");
age=request.getParameter("t4");
qty=request.getParameter("t5");
phno=request.getParameter("t6");
sq=request.getParameter("t7");
sa=request.getParameter("t8");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rmi");
System.out.println("connected..");
PreparedStatement psm = con. prepareStatement("Select * from Reg where uid1=?" );
psm.setString(1,uid);
//psm.setString(2,pwd);
ResultSet rs = psm.executeQuery();
if(rs. next())
{
System.out.println("id already exist..");
Vector v=new Vector();
v.addElement(name);
v.addElement(age);
v.addElement(qty);
v.addElement(phno);
v.addElement(sq);
v.addElement(sa);
session.putValue("reg",v);
response.sendRedirect("http://localhost:8084/onlinetest/Registration.jsp");
 }
else{
System.out.println("id not exist..");

PreparedStatement psm1 = con. prepareStatement("insert into reg values(?,?,?,?,?,?,?,?)");
psm1.setString(1,uid);

psm1.setString(2,pwd);

psm1.setString(3,name);

psm1.setInt(4,Integer.parseInt(age));
psm1.setInt(5,Integer.parseInt(qty));
psm1.setInt(6,Integer.parseInt(phno));
psm1.setString(7,sq);
psm1.setString(8,sa);
psm1.executeUpdate();
out.println("you are registered...");
session.putValue("reg",null);
response.sendRedirect("http://localhost:8084/onlinetest/Login4.html");
 }
}catch(Exception e){e.printStackTrace();}
%>

</body>
</html>