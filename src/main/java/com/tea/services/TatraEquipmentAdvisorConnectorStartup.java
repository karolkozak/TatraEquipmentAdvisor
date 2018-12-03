package com.tea.services;

import com.tea.interfaces.TatraEquipmentAdvisorConnectorable;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class TatraEquipmentAdvisorConnectorStartup implements CommandLineRunner, TatraEquipmentAdvisorConnectorable {
    @Override
    public void run(String... args) {
        checkConnection();
    }
}
