package com.tea.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

@Component
public class EquipmentProposalController extends SceneSwitcherable implements Initializable {

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Equipment proposal view");
    }

    @FXML
    public void handleEquipmentProposalAction(ActionEvent actionEvent) throws IOException {
    }
}
