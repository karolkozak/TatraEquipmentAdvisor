package com.tea.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ListView;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

@Component
public class EquipmentProposalController extends SceneSwitcherable implements Initializable {

    @FXML
    private Button startAgain;
    @FXML
    private ListView<String> equipmentProposal;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Equipment proposal view");
        equipmentProposal.getItems().addAll("One", "Two", "Three");
    }

    @FXML
    public void handleEquipmentProposalAction(ActionEvent actionEvent) throws IOException {
        startAgain.setDisable(true);
        nextScene(actionEvent, "start");
    }
}
