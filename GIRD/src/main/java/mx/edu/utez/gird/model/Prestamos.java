package mx.edu.utez.gird.model;

import java.sql.Timestamp;

public class Prestamos {
    private int id;
    private String nomAl;

    private String apellAl;

    private String matriAl;

    private Timestamp entregaDisp;

    private Timestamp devolucionDisp;
    private int estatus;

    private Dispositivos dispositivos;

    public Dispositivos getDispositivos() {
        return dispositivos;
    }

    public void setDispositivos(Dispositivos dispositivos) {
        this.dispositivos = dispositivos;
    }

    public Prestamos(int id, String nomAl, String apellAl, String matriAl,int estatus) {
        this.id = id;
        this.nomAl = nomAl;
        this.apellAl = apellAl;
        this.matriAl = matriAl;
        this.estatus = estatus;
    }

    public Prestamos() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomAl() {
        return nomAl;
    }

    public void setNomAl(String nomAl) {
        this.nomAl = nomAl;
    }

    public String getApellAl() {
        return apellAl;
    }

    public void setApellAl(String apellAl) {
        this.apellAl = apellAl;
    }

    public String getMatriAl() {
        return matriAl;
    }

    public void setMatriAl(String matriAl) {
        this.matriAl = matriAl;
    }

    public Timestamp getEntregaDisp() {
        return entregaDisp;
    }

    public void setEntregaDisp(Timestamp entregaDisp) {
        this.entregaDisp = entregaDisp;
    }

    public Timestamp getDevolucionDisp() {
        return devolucionDisp;
    }

    public void setDevolucionDisp(Timestamp devolucionDisp) {
        this.devolucionDisp = devolucionDisp;
    }

    public int getEstatus() {
        return estatus;
    }

    public void setEstatus(int estatus) {
        this.estatus = estatus;
    }
}
