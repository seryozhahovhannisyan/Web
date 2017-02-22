<%--
  Created by IntelliJ IDEA.
  User: Artur
  Date: 1/30/2017
  Time: 1:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward</title>
</head>
<body>
Forward To: <a href="/forward/second">second</a>
<%!
    @Override
    public void jspInit() {
        System.out.println("First  jspInit "+ this.hashCode());
    }

    //https://tomcat.apache.org/tomcat-5.5-doc/jspapi/javax/servlet/jsp/JspPage.html
    @Override
    public void jspDestroy() {
        System.out.println("First  jspDestroy "+ this.hashCode());
    }

//     Unable to compile class for JSP:
    /*@Override
    public void _jspService(HttpServletRequest request,
                            HttpServletResponse response) {
        System.out.println("First  _jspService "+ this.hashCode());
    }*/

%>
</body>
</html>
