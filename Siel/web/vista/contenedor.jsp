<%-- 
    Document   : contenedor
    Created on : Apr 19, 2019, 10:33:48 AM
    Author     : robar
--%>
<%@page import="modelo.AreaTrabajo"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Contenedor"%>
<%
    List<Contenedor> listaContenedor = (List<Contenedor>) request.getAttribute("contenedores");
    List<AreaTrabajo> listaAreaTrabajo = (List<AreaTrabajo>) request.getAttribute("areasTrabajo");
    
    Iterator<Contenedor> itContenedor = listaContenedor.iterator();
    Iterator<AreaTrabajo> itAreaTrabajo = listaAreaTrabajo.iterator();


%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="js/bootstrap.js"></script>
        <script language="javascript" src="js/listenerSiel.js"></script>
        <link type="text/css" href="css/bootstrap.css" rel="stylesheet">
        <link type="text/css" href="css/customCSS.css" rel="stylesheet">
        <title>contenedor</title>
    </head>

    <body>

        <header>
            <h2>SISTEMA INFORMÁTICO DE EXÁMENES DE LABORATORIO</h2>
        </header>
        <section>

            <nav>
                <ul>
                    <button type="button"   class="btn btn-primary btn-lg">Examenes</button>
                    <button type="button"   class="btn btn-primary btn-lg">Configuración</button>
                    <button type="button"   class="btn btn-primary btn-lg">Utilidades</button>
                    <button type="button"   class="btn btn-primary btn-lg">Examenes</button>
                    <button type="button"   class="btn btn-primary btn-lg">Configuración</button>
                    <button type="button"   class="btn btn-primary btn-lg">Utilidades</button>
                </ul>
            </nav>

            <article>

                <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                    <a class="navbar-brand">LISTADO DE CONTENEDORES</a>
                    <form class="form-inline">
                        <input id="filtrar" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </nav>

                <div class="table-striped">
                    <table id="table1"  style="font-size: 14px; font-family: roboto;"class="table table-hover" onclick="addRowHandlers()" >
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">ABREVIATURA CONTENEDOR</th>
                                <th scope="col">NOMBRE CONTENEDOR</th>
                                <th scope="col">ESTADO</th>
                            </tr>
                        </thead>
                        <tbody class="buscar">
                            <%while (itContenedor.hasNext()) {
                                    Contenedor contenedor = itContenedor.next();
                            %>
                            <tr>
                                <td><%=contenedor.getIdContenedor()%></td>
                                <td><%=contenedor.getAbreviacionContenedor()%></td>
                                <td><%=contenedor.getDescripcionContenedor()%></td>
                                <td><%=contenedor.getActivo()%></td>
                            </tr>
                            <%}%>

                        </tbody>
                    </table>
                </div>

                <div class="table-striped">
                    <table id="table1"  style="font-size: 14px; font-family: roboto;"class="table table-hover" onclick="addRowHandlers()" >
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">NOMBRE </th>
                                <th scope="col">SECCION</th>
                                <th scope="col">ESTADO</th>
                            </tr>
                        </thead>
                        <tbody class="buscar">
                            <%while (itAreaTrabajo.hasNext()) {
                                    AreaTrabajo areaTrabajo = itAreaTrabajo.next();
                            %>
                            <tr>
                                <td><%=areaTrabajo.getIdAreaTrabajo()%></td>
                                <td><%=areaTrabajo.getDescripcionAreaTrabajo()%></td>
                                <td><%=areaTrabajo.getSeccion().getDescripcionSeccion()%></td>
                                <td><%=areaTrabajo.getActivo()%></td>
                            </tr>
                            <%}%>

                        </tbody>
                    </table>
                </div>

                <form class="needs-validation" novalidate>
                    <div class="form-row">
                        <div class="col-md-1 mb-4">
                            <label for="validationCustom01">ID</label>
                            <input type="text" class="form-control" id="validationCustom01" placeholder="First name"  required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-3 mb-4">
                            <label for="validationCustom02">NOMBRE EXAMEN</label>
                            <input type="text" class="form-control" id="validationCustom02" placeholder="Last name"  required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <label for="validationCustomUsername">TIPO DE MUESTRA</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="validationCustom03" placeholder="Username" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Please choose a username.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <label for="validationCustomUsername">OBTENCIÓN</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="validationCustom04" placeholder="Username" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Please choose a username.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-4 mb-3">
                            <label for="validationCustom03">TIPO MUESTRA LABORATORIO</label>
                            <input type="text" class="form-control" id="validationCustom05" placeholder="City" required>
                            <div class="invalid-feedback">
                                Please provide a valid city.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustom04">CONTENEDOR</label>
                            <input type="text" class="form-control" id="validationCustom06" placeholder="State" required>
                            <div class="invalid-feedback">
                                Please provide a valid state.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustom05">AREA DE TRABAJO</label>
                            <input type="text" class="form-control" id="validationCustom07" placeholder="Zip" required>
                            <div class="invalid-feedback">
                                Please provide a valid zip.
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                            <label class="form-check-label" for="invalidCheck">
                                Agree to terms and conditions
                            </label>
                            <div class="invalid-feedback">
                                You must agree before submitting.
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-primary" type="submit">Submit form</button>
                </form>
            </article>
        </section>

        <footer>
            <p>Footer</p>
        </footer>

        <script>
            // Example starter JavaScript for disabling form submissions if there are invalid fields
            (function () {

                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');
                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>

        <div>
            <h3>${contenedor.idContenedor}</h3>
            <h3>${contenedor.abreviacionContenedor}</h3>
            <h3>${contenedor.descripcionContenedor}</h3>
            <h3>${contenedor.activo}</h3>
        </div>
    </body>
</html>
