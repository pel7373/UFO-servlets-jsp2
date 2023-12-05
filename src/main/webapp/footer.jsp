<center>
    <hr>
    <%
        session = request.getSession();
        Integer total = (Integer) session.getAttribute("total");
        if(total == null) {
            total = 0;
            session.setAttribute("total", 0);
        }

        Integer won = (Integer) session.getAttribute("won");
        if(won == null) {
            won = 0;
            session.setAttribute("won", 0);
        }

    %>
    Total number of games in this session: <b><%= total%></b>; number of games won in this session: <b><%= won %></b>

</center>
