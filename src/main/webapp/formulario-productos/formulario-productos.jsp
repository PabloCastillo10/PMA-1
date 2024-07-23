<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">  
        <title>JSP Page</title>
        
    </head>
    <body>
            <nav class="position-relative navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="../index.jsp">Sistema de gestion de inventarios</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menú</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="../index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="../formulario-productos/formulario-productos.jsp">Form Productos</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../producto-servlet">Lista Productos</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
    </nav>
        <br>
        <br>
        <div class="container mt-5 w-75">
            <% ArrayList<String> producto = (ArrayList)request.getAttribute("producto"); %>
            
            <%
                if(producto != null) {
                    for(String prod:producto){%>
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-primary" _msttexthash="1411449" _msthash="308"><%=prod%></li>
                    </ul>
                    <%}
                }
            %>
            
            <% if(request.getAttribute("mensaje") != null) {%>
            <dt class="col-sm-3" style="color: green;"><%= request.getAttribute("mensaje") %></p>
           <% } %> 
        </div>
        
    
        
        
    <div class="container-floating mt-5 w-75">
        <form action="/FormProducto2023198/producto-servlet" method="post" enctype="multipart/form-data">
                <div class="form-floating mb-4">
            <input class="form-control" id="nombreProducto" name="nombreProducto" type="text">
            <label for="nombreProducto">Nombre de Producto</label>
            </div>

            <div class="form-floating mb-4">
                <textarea class="form-control"  id="descripcionProducto" name="descripcionProducto" placeholder=""></textarea>
                <label for="descripcionProducto">Descripcion del producto</label>
            </div>

            <div class="form-floating mb-4">
                <input class="form-control" id="marcaProducto" name="marcaProducto" type="text" placeholder="">
                <label for="marcaProducto">Marca del Producto</label>
            </div>

            <div class="input-group mb-4">
              <span class="input-group-text">Q.</span>
              <input type="text" name="precioProducto" class="form-control" >
              <span class="input-group-text">.00</span>
            </div>
            <div>
              <input class="btn btn-outline-success" type="submit" value="Agregar">
            </div>
            
        </form>
    </div>

    
 
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
