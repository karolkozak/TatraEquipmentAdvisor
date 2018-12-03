package com.tea.services;

import com.tea.interfaces.TatraEquipmentAdvisorConnectorable;
import com.tea.models.EquipmentProposal;
import com.tea.models.TripData;
import org.jpl7.Query;
import org.jpl7.Term;
import org.springframework.stereotype.Service;

@Service
public class TatraEquipmentAdvisorConnector implements TatraEquipmentAdvisorConnectorable {

    private EquipmentProposal equipmentProposal = new EquipmentProposal();

    /*
     * cel wyprawy, region, pora roku, opady, temperatura, snieg, stan lawionowy, wspinaczka, godzina wymarszu, czas trwania
     * wykonaj(A, B, C, D, E, F, G, H, I, J) :-
    */
    @Override
    public void sendTripDataRequest(TripData tripData) {
        String t1 = "consult('src/main.pl')";
        System.out.println(t1 + " " + (Query.hasSolution(t1) ? "succeeded" : "failed"));

        String query = buildQueryString(tripData);
        Term[] results = Query.oneSolution(query).get("X").toTermArray();
        equipmentProposal.setProposal(results);
        System.out.println("all solutions of " + query);
    }

    @Override
    public EquipmentProposal getEquipmentProposal() {
        return equipmentProposal;
    }

    private String buildQueryString(TripData tripData) {
        return new StringBuilder()
                .append("wykonaj(")
                .append(tripData.getMountainLevel())
                .append(", ")
                .append(tripData.getMountainChain())
                .append(", ")
                .append(tripData.getSeason())
                .append(", ")
                .append(tripData.getFall())
                .append(", ")
                .append(tripData.getTemperature())
                .append(", ")
                .append(tripData.getSnowAmount())
                .append(", ")
                .append(tripData.getDegreeOfAvalanche())
                .append(", ")
                .append(tripData.getClimbing())
                .append(", ")
                .append(tripData.getStartHour())
                .append(", ")
                .append(tripData.getTrailwayDuration())
                .append(", ")
                .append("X")
                .append(")")
                .toString();
    }
}
