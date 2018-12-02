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
public class TrailwayDurationController extends AbstractSceneController implements Initializable {

    @FXML
    private Button nextButton;
    @FXML
    private Slider trailwayDuration;
    @Autowired
    private TripDataService tripDataService;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Trailway duration view");
    }

    @FXML
    public void handleTrailwayDurationAction(ActionEvent actionEvent) throws IOException {
        nextButton.setDisable(true);
        getValueFromView();
        nextScene(actionEvent, "climbing");
    }

    @Override
    protected void getValueFromView() {
        Integer value = (new Double(trailwayDuration.getValue())).intValue();
        tripDataService.getTripData().setTrailwayDuration(value);
    }
}
