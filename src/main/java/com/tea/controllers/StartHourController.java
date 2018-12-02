package com.tea.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

@Component
public class StartHourController extends SceneSwitcherable implements Initializable {

    @FXML
    private Button nextButton;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Start hour view");
    }

    @FXML
    public void handleStartHourAction(ActionEvent actionEvent) throws IOException {
        nextButton.setDisable(true);
        nextScene(actionEvent, "trailwayDuration");
    }
}
