package com.tea.services;

import com.tea.interfaces.TatraEquipmentAdvisorConnectorable;
import com.tea.models.EquipmentProposal;
import com.tea.models.TripData;
import org.jpl7.Query;
import org.jpl7.Term;
import org.jpl7.Variable;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class TatraEquipmentAdvisorConnector implements TatraEquipmentAdvisorConnectorable {

    private EquipmentProposal equipmentProposal;

    /* cel wyprawy, region, pora roku, opady, temperatura, snieg, stan lawionowy, wspinaczka, godzina wymarszu, czas trwania
     * wykonaj(A, B, C, D, E, F, G, H, I, J) :-
    */
    @Override
    public void sendTripDataRequest(TripData tripData) {
        String t1 = "consult('src/main.pl')";
        System.out.println(t1 + " " + (Query.hasSolution(t1) ? "succeeded" : "failed"));

        String query = buildQueryString(tripData);
        Map<String, Term>[] nene = Query.allSolutions(query);
//        System.out.println("all solutions of " + query);

        Term term[] = new Term[]{
                new Variable(tripData.getMountainLevel()),
                new Variable(tripData.getMountainChain()),
                new Variable(tripData.getSeason()),
                new Variable(tripData.getFall()),
                new Variable(tripData.getTemperature().toString()),
                new Variable(tripData.getSnowAmount().toString()),
                new Variable(tripData.getDegreeOfAvalanche().toString()),
                new Variable(tripData.getClimbing()),
                new Variable(tripData.getStartHour().toString()),
                new Variable(tripData.getTrailwayDuration().toString()),
                new Variable("_")
        };
        Query q = new Query("wykonaj", term);
//        Map<String, Term>[] result = q.allSolutions();
//        System.out.println("nene");

    }

    @Override
    public EquipmentProposal getEquipmentProposal() {
        return equipmentProposal;
    }

    public static void prolog() {
        //
        String t1 = "consult('src/family.pl')";
        System.out.println(t1 + " " + (Query.hasSolution(t1) ? "succeeded" : "failed"));
        //
        String t2 = "child_of(joe, ralf)";
        System.out.println(t2 + " is " + (Query.hasSolution(t2) ? "provable" : "not provable"));
        //
        String t3 = "descendent_of(steve, ralf)";
        System.out.println(t3 + " is " + (Query.hasSolution(t3) ? "provable" : "not provable"));
        //
        String t4 = "descendent_of(X, ralf)";
        System.out.println("first solution of " + t4 + ": X = " + Query.oneSolution(t4).get("X"));
        Map<String, Term>[] ss4 = Query.allSolutions(t4);
        System.out.println("all solutions of " + t4);
        for (int i = 0; i < ss4.length; i++) {
            System.out.println("X = " + ss4[i].get("X"));
        }
        System.out.println("each solution of " + t4);
        Query q4 = new Query(t4);
        while (q4.hasMoreSolutions()) {
            Map<String, Term> s4 = q4.nextSolution();
            System.out.println("X = " + s4.get("X"));
        }
        //
        String t5 = "descendent_of(X,Y)";
        Query q5 = new Query(t5);
        System.out.println("each solution of " + t5);
        while (q5.hasMoreSolutions()) {
            Map<String, Term> s5 = q5.nextSolution();
            System.out.println("X = " + s5.get("X") + ", Y = " + s5.get("Y"));
        }
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
                .append("_")
                .append(")")
                .toString();
    }
}
