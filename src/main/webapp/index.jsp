<%@ page import="org.slf4j.Logger" %>
<%@ page import="org.slf4j.LoggerFactory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start Page</title>
</head>
<body>

<%
    Logger logger = LoggerFactory.getLogger(
            "index.jsp");
    StringBuilder sb = new StringBuilder();
    sb.append("index.jsp is opened!");
    logger.info(sb.toString());
%>

<jsp:include page="header.jsp" />

<center>
<h1>Ви втрачаєте пам'ять! Прийняти виклик НЛО?</h1>
<form action="/ufo00" method="post">

    <input type="radio" name="answer" value="true">Прийняти виклик<br>
    <input type="radio" name="answer" value="false">Відхилити виклик<br>
    <input type="submit" value="Ок">

</form>
</center>

</body>
</html>