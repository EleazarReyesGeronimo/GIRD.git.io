<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />

<br><br><br>
<section>
    <fieldset>
        <form class="row g-3 " method="post" action="DispositivoServlet">

            <div class="col-md-4">
                <label for="validationServer06" class="form-label"><h3><strong>No. DE SERIE:</strong></h3></label>
                <input type="text" maxlength="20" class="form-control-file" name="numSerie" id="validationServer06" placeholder="Ingresa el numero de serie del dispositivo" value="${dispositivo.numSerie}" required>
            </div>

            <div class="col-md-4">
                <label for="validationServer01" class="form-label"><h3><strong>TIPO:</strong></h3></label>
                <input type="text" maxlength="20" class="form-control-file" name="tipo" id="validationServer01" placeholder="Ingresa el tipo de dispositivo" value="${dispositivo.tipo}" required>
            </div>

            <div class="col-md-4">
                <label for="validationServer08" class="form-label"><h3><strong>MARCA:</strong></h3></label>
                <input type="text" maxlength="20" class="form-control-file" id="validationServer08" name="marca" placeholder="Ingresa la marca del dispositivo" value="${dispositivo.marca}" required>
            </div>
            <br><br>

            <div class="col-md-4">    <br><br>
                <label for="validationServer02" class="form-label"><h3><strong>MODELO:</strong></h3></label>
                <input type="text" maxlength="20" class="form-control-file" id="validationServer02" name="modelo" placeholder="Ingresa el modelo del dispositivo" value="${dispositivo.modelo}" required>
            </div>
            <br><br>

            <div class="col-md-4">    <br><br>
                <label for="validationServer03" class="form-label"><h3><strong>UNIDADES:</strong></h3></label>
                <input type="number" class="form-control-file" id="validationServer03" name="unidades" placeholder="Ingresa las unidades existentes" value="${dispositivo.unidades}" required>
            </div>
            <br><br>

            <div class="col-md-4">    <br><br>
                <label for="validationServer011" class="form-label"><h3><strong>CARACTERISTICAS:</strong></h3></label>
                <textarea type="text" maxlength="250" class="form-control-file" id="validationServer011" name="caracteristicas" placeholder="Ingresa las características del dispositivo..." value="${dispositivo.caracteristicas}" required></textarea>
                <%--<input type="text" class="form-control-file" id="validationServer011" name="caracteristicas"  value="${dispositivo.caracteristicas}" required>--%>
            </div>

            <div class="col-md-4">    <br><br>
                <label for="validationServer09" class="form-label"><h3><strong>ESTADO:</strong></h3></label>
                <%--<input type="text" class="form-control-file" id="validationServer09" name="estatus" placeholder="Ingresa el estado del dispositivo" value="${dispositivo.estatus}" required>--%>
                <select class="form-control-file" id="validationServer09" name="estatus" value="${dispositivo.estatus}">
                    <option value="Disponible" selected>Disponible</option>
                    <option value="En espera">En espera</option>
                    <option value="Fuera de servicio">Fuera de servicio</option>
                </select>
            </div>

            <div class="col-md-4">    <br><br>
                <label for="validationServer010" class="form-label"><h3><strong>OBSERVACIONES:</strong></h3></label>
                <textarea type="text" maxlength="250" class="form-control-file" id="validationServer010" name="observaciones" placeholder="Ingresa las observaciones requeridas..." value="${dispositivo.observaciones}" required></textarea>
                <%--<input type="text" class="form-control-file" id="validationServer010" name="observaciones"  value="${dispositivo.observaciones}" required>--%>
            </div>

            <!--<div class="col-md-4" ><br><br>
                <label  class="form-label"><h3><strong>Foto Del Dispositivo =</h5></strong></h3></label>
                <input type="file" class="form-control" aria-label="file example" required>
            </div>-->
            <input type="hidden" name="id" value="${dispositivo.id}">

            <div class="col-12" align="center"><br><br>
                <button class="btn btn-primary" type="submit" value="registrar">Agregar Dispostivo</button>
            </div>
        </form>
    </fieldset>
</section>
<br><br>
<%
    request.getSession().removeAttribute("dispositivo");
%>
<jsp:include page="footer.jsp" />




<!--numSerie varchar(20) not null,
tipo varchar(20) not null,
marca varchar(50) not null,
modelo varchar(50) not null,
unidades int not null,
nPuertos int,
tPuertos varchar(200),
estatus varchar(50),
observaciones varchar(250),-->
