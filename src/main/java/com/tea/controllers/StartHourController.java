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
public class StartHourController extends AbstractSceneController implements Initializable {

    @FXML
    private Button nextButton;
    @FXML
    private Slider startHour;
    @Autowired
    private TripDataService tripDataService;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Start hour view");
    }

    @FXML
    public void handleStartHourAction(ActionEvent actionEvent) throws IOException {
        nextButton.setDisable(true);
        getValueFromView();
        nextScene(actionEvent, "trailwayDuration");
    }

    @Override
    protected void getValueFromView() {
        Integer value = (new Double(startHour.getValue())).intValue();
        tripDataService.getTripData().setStartHour(value);
    }
}
