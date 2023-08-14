package mx.edu.utez.gird.model;

public class Usuarios {
    private int id;
    private String nombre;
    private String apellido;
    private String email;
    private String contra;
    private boolean tipoUsr;

    public Usuarios() {
    }

    public Usuarios(int id, String nombre, String apellido, String email, String contra, boolean tipoUsr) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.contra = contra;
        this.tipoUsr = tipoUsr;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra= contra;
    }

    public boolean isTipoUsr() {
        return tipoUsr;
    }

    public void setTipoUsr(boolean tipoUsr) {
        this.tipoUsr = tipoUsr;
    }
}
