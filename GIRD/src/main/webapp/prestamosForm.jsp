<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:include page="header.jsp" />--%>

<body>
<form class="form-control" method="post" action="/PrestamoServlet">
    <label>Nobre:</label>
    <input type="text" name="nomAl" value="${alumno.nomAl}"/>
    <br>
    <label>Apemllido:</label>
    <input type="text" name="apellAl" value="${alumno.apellAl}"/>
    <br>
    <label>Matrícula:</label>
    <input type="text" name="matriAl" value="${alumno.matriAl}"/>
    <br>
    <!--<label>Fecha de entrega:</label>
    <input type="datetime-local" name="entregaDisp" value="${alumno.entregaDisp}"/>
    <br>
    <label>Fecha de regreso:</label>
    <input type="datetime-local" name="regresoDisp" value="${alumno.regresoDisp}"/>
    <br>-->
    <% String id = request.getParameter("id"); %>
    <input type="hidden" name="id" value="<%=id%>"/>
    <input type="submit" value="Registrar"/>
</form>
</body>
</html>