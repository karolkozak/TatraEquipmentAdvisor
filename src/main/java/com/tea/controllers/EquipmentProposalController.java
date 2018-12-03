package com.tea.controllers;

import com.tea.models.EquipmentProposal;
import com.tea.services.TatraEquipmentAdvisorConnector;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ListView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.ResourceBundle;
import java.util.stream.Collectors;

@Component
public class EquipmentProposalController extends AbstractSceneController implements Initializable {

    @FXML
    private Button startAgain;
    @FXML
    private ListView<String> equipmentProposal;
    @Autowired
    private TatraEquipmentAdvisorConnector tatraEquipmentAdvisorConnector;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        System.out.println("Equipment proposal view");
        EquipmentProposal nene = tatraEquipmentAdvisorConnector.getEquipmentProposal();
        List<String> list = Arrays.stream(nene.getProposal()).map(Object::toString).collect(Collectors.toList());
        equipmentProposal.getItems().addAll(list);
    }

    @FXML
    public void handleEquipmentProposalAction(ActionEvent actionEvent) throws IOException {
        startAgain.setDisable(true);
        nextScene(actionEvent, "start");
    }
}
