<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>Implicit Page</title>
</head>
<body>
<%-- out object example --%>
<h4>Hi There</h4>
<strong>1 out</strong>: <% out.print(new Date()); %><br><br>

<%-- request object example --%>
<strong>2 request</strong>: <%=request.getHeader("User-Agent") %><br><br>

<%-- config object example --%>
<strong>3 config</strong>:<%=config.getInitParameter("initparamUser") %><br><br>

<%-- application object example --%>
<strong>4 application</strong>:<%=application.getInitParameter("contextUser") %><br><br>

<%-- session object example --%>
<strong>5 session</strong>:<%=session.getId() %><br><br>

<%-- pageContext object example --%>
<% pageContext.setAttribute("Test", "Test Value"); %>
<strong>6 pageContext</strong>: {Name="Test",Value="<%=pageContext.getAttribute("Test") %>"}<br><br>

<%-- page object example --%>
<strong>7 page</strong>:<%=page.getClass().getName() %><br><br>

<%-- response object example --%>
<%response.addCookie(new Cookie("Test", "Value")); %>
<%-- page object example --%>
<strong>8 response</strong>:<%=response.getHeader("Set-Cookie") %><br><br>
<strong>9 exception </strong>
<span>
    JSP exception implicit object is instance of java.lang.Throwable class and used to provide exception details in JSP error pages. We can?t use this object in normal JSP pages and it?s available only in JSP error pages
</span><br><br>

<hr/>
http://www.journaldev.com/2064/jsp-expression-language-el-example-tutorial
<hr/>
<strong>Declaration </strong> < %! public static int count=0; %>.<br><br>
<%! public static int count=0; %>
<strong>Scriptlet </strong>  < %
    count ++;
%><br><br>
<%
    count ++;
%>
<strong>Expression  </strong> < %=count%>
<%=count%>

</body>
</html>