// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import java.lang.String;

privileged aspect Competition_Roo_ToString {
    
    public String Competition.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Enabled: ").append(getEnabled()).append(", ");
        sb.append("CurrentCompetition: ").append(getCurrentCompetition()).append(", ");
        sb.append("CompetitionStatus: ").append(getCompetitionStatus()).append(", ");
        sb.append("DateCreated: ").append(getDateCreated()).append(", ");
        sb.append("LastUpdated: ").append(getLastUpdated()).append(", ");
        sb.append("BrokerCompetitions: ").append(getBrokerCompetitions() == null ? "null" : getBrokerCompetitions().size());
        return sb.toString();
    }
    
}
