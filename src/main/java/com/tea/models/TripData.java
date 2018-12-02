package com.tea.models;

import lombok.Data;

@Data
public class TripData {
    private String mountainChain;
    private String mountainLevel;
    private String season;
    private Integer temperature;
    private String fall;
    private Integer snowAmount;
    private Integer degreeOfAvalanche;
    private Integer startHour;
    private Integer trailwayDuration;
    private String climbing;
}
