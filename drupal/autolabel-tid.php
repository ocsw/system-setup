<?php
  $label = "";

  if (property_exists($entity, "field_power_circuit") && !empty($entity->field_power_circuit)) {
    $tid = $entity->field_power_circuit[$language][0]["tid"];
    $term = taxonomy_term_load($tid);
    if (!is_object($term)) {
      watchdog("auto_entitylabel / taxonomy", "Can't find taxonomy term #" . $tid . ".", NULL, WATCHDOG_ERROR);
    }
    else {
      $label = $term->name;
    }
  }

  return($label . '-' . $entity->field_number_name[$language]['0']['value']);
?>
