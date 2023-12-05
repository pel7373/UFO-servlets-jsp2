<%@ page import="org.slf4j.Logger" %>
<%@ page import="org.slf4j.LoggerFactory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lose Page</title>
</head>
<body>
<jsp:include page="header.jsp" />

<center>
<%
    Logger logger = LoggerFactory.getLogger(
            "losePage.jsp");
    StringBuilder sb = new StringBuilder();
    sb.append("losePage.jsp is opened!");
    logger.info(sb.toString());

    String message = (String)request.getAttribute("answer");

    session = request.getSession();
    Integer markerFromStartToFinish = (Integer) session.getAttribute("markerFromStartToFinish");
    if(markerFromStartToFinish != null
        && (markerFromStartToFinish == 0
            || markerFromStartToFinish == 1
            || markerFromStartToFinish == 2)) {
        Integer total = (Integer) session.getAttribute("total");
        total++;
        session.setAttribute("total", total);
        session.setAttribute("markerFromStartToFinish", -5);
    }
%>
<%= message %>
<h1>Ви програли!</h1>
<form action="/" method="post">
    <input type="submit" value="Почати гру заново!">
</form>
</center>
<jsp:include page="footer.jsp" />
</body>
</html>