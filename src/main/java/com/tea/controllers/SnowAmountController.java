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
public class SnowAmountController extends SceneSwitcherable implements Initializable {

    @FXML
    private Button nextButton;
    @FXML
    private Slider snowAmount;
    @Autowired
    private TripDataService tripDataService;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Snow amount view");
    }

    @FXML
    public void handleSnowAmountAction(ActionEvent actionEvent) throws IOException {
        nextButton.setDisable(true);
        Integer value = (new Double(snowAmount.getValue())).intValue();
        tripDataService.getTripData().setSnowAmount(value);
        nextScene(actionEvent, "degreeOfAvalanche");
    }
}
