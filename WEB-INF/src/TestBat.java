import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class TestBat extends HttpServlet
  {

     public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
        {
            doPost(req,res);
         }
  public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException

     {
try{
 Runtime run =Runtime.getRuntime();
run.exec("cmd.exe /c start G:/apache-tomcat-5.5.27/webapps/onlinetest/runtest.bat");
System.out.println("attempt now..");
       }catch(Exception e){e.printStackTrace();}
    }
}