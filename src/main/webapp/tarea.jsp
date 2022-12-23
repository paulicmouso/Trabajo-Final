<jsp:include page="WEB-INF/pages/comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="TAREA" />
</jsp:include>

<jsp:include page="WEB-INF/pages/comunes/navbar.jsp" />

<section class="container">
    <div class="row py-3 align-items-center justify-content-center">
        <div class="col-12" >
            <div class="row">
                <h1 class="h3">Ver datos</h1>
                <p class="lead">Estás viendo los datos de ${alumnoAVer.nombreCompleto}.</p>
            </div>

        </div>
    </div>

    <section class="container py-3">
        <div class="row">
            <div class="col-md-5 col-lg-4 col">        
                <jsp:include page="WEB-INF/pages/alumnos/partes/dataCardAlumno.jsp">
                    <jsp:param name="fotoAlumno" value="${alumnoAVer.foto}" />
                </jsp:include>
            </div> 
            <div class="col">
                <h1 class="h3">${alumnoAVer.nombreCompleto}</h1>
                <p class="lead">Nombre y apellido: ${alumnoAVer.nombreCompleto}.</p>
                <p class="lead">Fecha de nacimiento: ${alumnoAVer.fechaNacimiento}.</p>        
                <p class="lead">Edad: ${alumnoAVer.edad} años.</p>
                <p class="lead">Mail: ${alumnoAVer.mail}</p>
                <div class="col">
                    <a class="btn btn-warning " href="${pageContext.request.contextPath}/app">Volver</a>
                    <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoAVer.id}" class="btn bg-warning"><i class="bi bi-pencil"></i></a>
                    <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoAVer.id}" class="btn bg-danger text-light"><i class="bi bi-trash3"></i></a>
                </div>
            </div>
        </div>
    </section>


    <jsp:include page="WEB-INF/pages/comunes/footer.jsp"/>
    <jsp:include page="WEB-INF/pages/comunes/finHTML.jsp"/>