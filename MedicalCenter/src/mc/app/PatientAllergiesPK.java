/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mc.app;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author Rajith
 */
@Embeddable
public class PatientAllergiesPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "PatientID")
    private String patientID;
    @Basic(optional = false)
    @Column(name = "Allergy")
    private String allergy;

    public PatientAllergiesPK() {
    }

    public PatientAllergiesPK(String patientID, String allergy) {
        this.patientID = patientID;
        this.allergy = allergy;
    }

    public String getPatientID() {
        return patientID;
    }

    public void setPatientID(String patientID) {
        this.patientID = patientID;
    }

    public String getAllergy() {
        return allergy;
    }

    public void setAllergy(String allergy) {
        this.allergy = allergy;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (patientID != null ? patientID.hashCode() : 0);
        hash += (allergy != null ? allergy.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PatientAllergiesPK)) {
            return false;
        }
        PatientAllergiesPK other = (PatientAllergiesPK) object;
        if ((this.patientID == null && other.patientID != null) || (this.patientID != null && !this.patientID.equals(other.patientID))) {
            return false;
        }
        if ((this.allergy == null && other.allergy != null) || (this.allergy != null && !this.allergy.equals(other.allergy))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "mc.app.PatientAllergiesPK[ patientID=" + patientID + ", allergy=" + allergy + " ]";
    }
    
}
