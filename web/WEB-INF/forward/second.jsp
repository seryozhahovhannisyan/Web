<%--
  Created by IntelliJ IDEA.
  User: Artur
  Date: 1/30/2017
  Time: 2:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward</title>
</head>
<body>
Forward to:   <a href="/forward/first">first</a>

<%!
    @Override
    public void jspInit() {
        System.out.println("Second jspInit "+ this.hashCode());
    }

    @Override
    public void jspDestroy() {
        System.out.println("Second jspDestroy "+ this.hashCode());
    }


%>

</body>
</html>
