/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mc.app;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Rajith
 */
@Entity
@Table(name = "patient_allergies", catalog = "mc", schema = "")
@NamedQueries({
    @NamedQuery(name = "PatientAllergies.findAll", query = "SELECT p FROM PatientAllergies p")
    , @NamedQuery(name = "PatientAllergies.findByPatientID", query = "SELECT p FROM PatientAllergies p WHERE p.patientAllergiesPK.patientID = :patientID")
    , @NamedQuery(name = "PatientAllergies.findByAllergy", query = "SELECT p FROM PatientAllergies p WHERE p.patientAllergiesPK.allergy = :allergy")})
public class PatientAllergies implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected PatientAllergiesPK patientAllergiesPK;

    public PatientAllergies() {
    }

    public PatientAllergies(PatientAllergiesPK patientAllergiesPK) {
        this.patientAllergiesPK = patientAllergiesPK;
    }

    public PatientAllergies(String patientID, String allergy) {
        this.patientAllergiesPK = new PatientAllergiesPK(patientID, allergy);
    }

    public PatientAllergiesPK getPatientAllergiesPK() {
        return patientAllergiesPK;
    }

    public void setPatientAllergiesPK(PatientAllergiesPK patientAllergiesPK) {
        this.patientAllergiesPK = patientAllergiesPK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (patientAllergiesPK != null ? patientAllergiesPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PatientAllergies)) {
            return false;
        }
        PatientAllergies other = (PatientAllergies) object;
        if ((this.patientAllergiesPK == null && other.patientAllergiesPK != null) || (this.patientAllergiesPK != null && !this.patientAllergiesPK.equals(other.patientAllergiesPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "mc.app.PatientAllergies[ patientAllergiesPK=" + patientAllergiesPK + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
