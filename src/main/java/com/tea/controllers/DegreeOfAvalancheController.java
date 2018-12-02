package com.tea.controllers;

import com.tea.services.TripDataService;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Slider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

@Component
public class DegreeOfAvalancheController extends SceneSwitcherable implements Initializable {

    @FXML
    private Button nextButton;
    @FXML
    private Slider degreeOfAvalanche;
    @Autowired
    private TripDataService tripDataService;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Degree of avalanche view");
    }

    @FXML
    public void handleDegreeOfAvalancheAction(ActionEvent actionEvent) throws IOException {
        nextButton.setDisable(true);
        Integer value = (new Double(degreeOfAvalanche.getValue())).intValue();
        tripDataService.getTripData().setDegreeOfAvalanche(value);
        nextScene(actionEvent, "startHour");
    }
}
