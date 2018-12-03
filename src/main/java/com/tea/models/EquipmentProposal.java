package com.tea.models;

import lombok.Data;
import org.jpl7.Term;

import java.util.Map;

@Data
public class EquipmentProposal {
    Map<String, Term>[] proposal;
}
