package com.tea.controllers;

import com.tea.services.TripDataService;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.RadioButton;
import javafx.scene.control.ToggleGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

@Component
public class SeasonController extends AbstractSceneController implements Initializable {

    @FXML
    private Button nextButton;
    @FXML
    private ToggleGroup season;
    @Autowired
    private TripDataService tripDataService;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Season view");
    }

    @FXML
    public void handleSeasonAction(ActionEvent actionEvent) throws IOException {
        nextButton.setDisable(true);
        getValueFromView();
        nextScene(actionEvent, "temperature");
    }

    @Override
    protected void getValueFromView() {
        RadioButton selectedRadioButton = (RadioButton) season.getSelectedToggle();
        String selectedValue = selectedRadioButton.getText();
        tripDataService.getTripData().setSeason(selectedValue);
    }
}
