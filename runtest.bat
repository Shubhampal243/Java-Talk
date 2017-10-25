if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
cd /
g:
cd G:\apache-tomcat-5.5.27\webapps\onlinetest
set path=C:\Program Files (x86)\Java\jdk1.7.0_80\bin;
set classpath=C:\Program Files (x86)\Java\jdk1.7.0_80\bin;
javac OnlineTest.java
java OnlineTest
exit