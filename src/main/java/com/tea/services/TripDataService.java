package com.tea.services;

import com.tea.models.TripData;
import org.springframework.stereotype.Service;

@Service
public class TripDataService {

    private TripData tripData = new TripData();

    public TripData getTripData() {
        return tripData;
    }

    public void setClimbing(boolean climbing) {
        tripData.setClimbing(climbing);
    }
}
