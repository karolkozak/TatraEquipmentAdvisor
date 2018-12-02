package com.tea.controllers;

import com.tea.services.TripDataService;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

@Component
public class SummaryController extends SceneSwitcherable implements Initializable {

    @FXML
    private Button getResultButton;
    @Autowired
    private TripDataService tripDataService;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Summary view");
        System.out.println(tripDataService.getTripData().getClimbing());
    }

    @FXML
    public void handleSummaryAction(ActionEvent actionEvent) throws IOException {
        getResultButton.setDisable(true);
        nextScene(actionEvent, "equipmentProposal");
    }
}
