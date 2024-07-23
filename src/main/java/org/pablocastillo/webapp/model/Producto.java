package org.pablocastillo.webapp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table (name = "Productos")
@Entity
public class Producto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productoId;
    private String nombreProducto;
    private String marcaProducto;
    private String descripcionProducto;
    private Double precio;

    public Producto() {
    }

    public Producto(int productoId, String nombreProducto, String marcaProducto, String descripcionProducto, Double precio) {
        this.productoId = productoId;
        this.nombreProducto = nombreProducto;
        this.marcaProducto = marcaProducto;
        this.descripcionProducto = descripcionProducto;
        this.precio = precio;
    }
    
    public Producto(String nombreProducto, String descripcionProducto, String marcaProducto, Double precio) {
        this.nombreProducto = nombreProducto;
        this.descripcionProducto = descripcionProducto;
        this.marcaProducto = marcaProducto;
        this.precio = precio;
    }

    public int getProductoId() {
        return productoId;
    }

    public void setProductoId(int productoId) {
        this.productoId = productoId;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getMarcaProducto() {
        return marcaProducto;
    }

    public void setMarcaProducto(String marcaProducto) {
        this.marcaProducto = marcaProducto;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Producto{" + "productoId=" + productoId + ", nombreProducto=" + nombreProducto + ", marcaProducto=" + marcaProducto + ", descripcionProducto=" + descripcionProducto + ", precio=" + precio + '}';
    }

    
    
    
    
}

    
