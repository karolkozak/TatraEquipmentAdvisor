package com.tea.controllers;

import com.tea.models.TripData;
import com.tea.services.TatraEquipmentAdvisorConnector;
import com.tea.services.TripDataService;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

@Component
public class SummaryController extends AbstractSceneController implements Initializable {

    @FXML
    private Button getResultButton;
    @FXML
    private Label mountainChain;
    @FXML
    private Label mountainLevel;
    @FXML
    private Label season;
    @FXML
    private Label temperature;
    @FXML
    private Label fall;
    @FXML
    private Label snowAmount;
    @FXML
    private Label degreeOfAvalanche;
    @FXML
    private Label startHour;
    @FXML
    private Label trailwayDuration;
    @FXML
    private Label climbing;
    @Autowired
    private TripDataService tripDataService;
    @Autowired
    private TatraEquipmentAdvisorConnector tatraEquipmentAdvisorConnector;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Summary view");
//        mountainChain.setText(tripDataService.getTripData().getMountainChain());
//        mountainLevel.setText(tripDataService.getTripData().getMountainLevel());
//        season.setText(tripDataService.getTripData().getSeason());
//        temperature.setText(tripDataService.getTripData().getTemperature().toString());
//        fall.setText(tripDataService.getTripData().getFall());
//        snowAmount.setText(tripDataService.getTripData().getSnowAmount().toString());
//        degreeOfAvalanche.setText(tripDataService.getTripData().getDegreeOfAvalanche().toString());
//        startHour.setText(tripDataService.getTripData().getStartHour().toString());
//        trailwayDuration.setText(tripDataService.getTripData().getTrailwayDuration().toString());
//        climbing.setText(tripDataService.getTripData().getClimbing());
    }

    @FXML
    public void handleSummaryAction(ActionEvent actionEvent) throws IOException {
        getResultButton.setDisable(true);
//        tatraEquipmentAdvisorConnector.sendTripDataRequest(tripDataService.getTripData());
        TripData tripData = new TripData();
        tripData.setMountainChain("wysokie");
        tripData.setMountainLevel("turnie");
        tripData.setDegreeOfAvalanche(0);
        tripData.setTrailwayDuration(9);
        tripData.setTemperature(10);
        tripData.setStartHour(8);
        tripData.setSnowAmount(0);
        tripData.setSeason("zima");
        tripData.setFall("brak");
        tripData.setClimbing("nie");
        tatraEquipmentAdvisorConnector.sendTripDataRequest(tripData);
        nextScene(actionEvent, "equipmentProposal");
    }
}
