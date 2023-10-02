/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsplernen;
import java.util.Date;
/**
 *
 * @author Minh Nguyen
 */
public class lieblingsgericht {
    private String gericht, koch, nachname, vorname;
    private Date datum;
    
    public lieblingsgericht() 
    {
        datum = new Date();
    }
    public void setVorname(String newValueStr) {
        this.vorname = newValueStr;
    }
    public void setNachname(String newValueStr) {
        this.nachname = newValueStr;
    }
    public void setkoch(String newValueStr) {
        this.koch = newValueStr;
    }
    public void setGericht(String newValueStr) {
        this.gericht = newValueStr;
    }
    public String getVorname() {
        return this.vorname;
    }
    public String getNachname() {
        return this.nachname;
    }
    public String getGericht() {
        return this.gericht;
    }
    public String getKoch() {
        return this.koch;
    }
    public Date getDatum() {
        return datum;
    }
}

