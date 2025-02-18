drop database if exists SGBDProductosIN5CM;

create database if not exists SGBDProductosIN5CM;

USE SGBDProductosIN5CM;
 
CREATE TABLE Productos(
	productoId INT NOT NULL AUTO_INCREMENT,
    nombreProducto VARCHAR(30) NOT NULL,
    descripcionProducto VARCHAR(100) NOT NULL,
    marcaProducto VARCHAR(30) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    PRIMARY KEY PK_productoId(productoId)
);

INSERT INTO Productos(nombreProducto, descripcionProducto, marcaProducto, precio)VALUES
	( 'Sopa', 'Sopa Instantanea', 'Laky', 10.00);
 
SELECT * FROM Productos;