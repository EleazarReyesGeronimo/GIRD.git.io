package mx.edu.utez.gird.model;

public class Dispositivos {
    private int id;
    private String numSerie;
    private String tipo;
    private String marca;
    private String modelo;
    private int unidades;
    private String caracteristicas;
    private String estatus;
    private String observaciones;

    public Dispositivos(int id, String numSerie, String tipo, String marca, String modelo, int unidades,
                        String caracteristicas, String estatus, String observaciones) {
        this.id = id;
        this.numSerie = numSerie;
        this.tipo = tipo;
        this.marca = marca;
        this.modelo = modelo;
        this.unidades = unidades;
        this.caracteristicas = caracteristicas;
        this.estatus = estatus;
        this.observaciones = observaciones;
    }

    public Dispositivos() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumSerie() {
        return numSerie;
    }

    public void setNumSerie(String numSerie) {
        this.numSerie = numSerie;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getUnidades() {
        return unidades;
    }

    public void setUnidades(int unidades) {
        this.unidades = unidades;
    }

    public String getCaracteristicas() {return caracteristicas;}

    public void setCaracteristicas(String caracteristicas) {this.caracteristicas = caracteristicas;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }



}
