<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:include page="header.jsp" />--%>

<body>
<form class="form-control" method="post" action="/PrestamoServlet">
    <label>Nombre:</label>
    <input type="text" name="nomAl" value="${alumno.nomAl}"/>
    <br>
    <label>Apellido:</label>
    <input type="text" name="apellAl" value="${alumno.apellAl}"/>
    <br>
    <label>Matrícula:</label>
    <input type="text" name="matriAl" value="${alumno.matriAl}"/>
    <br>
    <%--<label>Fecha de entrega:</label>
    <input type="datetime-local" name="entregaDisp" value="${alumno.entregaDisp}"/>
    <br>
    <label>Fecha de regreso:</label>
    <input type="datetime-local" name="regresoDisp" value="${alumno.regresoDisp}"/>
<<<<<<< HEAD
    <br>-->
    <% String id = request.getParameter("id"); %>
    <input type="hidden" name="id" value="<%=id%>"/>
=======
    <br>--%>

    <input type="hidden" name="id" value="${prestamo.id}"/>
>>>>>>> e6bb9352e58f6e410d6587edce021762320346f1
    <input type="submit" value="Registrar"/>
</form>
</body>
</html>