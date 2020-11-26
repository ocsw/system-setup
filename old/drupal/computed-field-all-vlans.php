$dupcheck = array();
$tids = array();
$entity_field = array();

if (property_exists($entity, "field_vlan") && !empty($entity->field_vlan)) {
  foreach ($entity->field_vlan[$langcode] as $vlv) {
    if (!isset($dupcheck[$vlv["tid"]])) {
      $dupcheck[$vlv["tid"]] = 1;
      $tids[] = $vlv["tid"];
    }
  }
}

if (property_exists($entity, "field_ports") && !empty($entity->field_ports)) {
  foreach ($entity->field_ports[$langcode] as $fcv) {
    $e = entity_load("field_collection_item", array($fcv["value"]));

    if (empty($e)) {
      watchdog("computed_field / field_collection", "Can't load field collection item #" . $fcv["value"] . ".", NULL, WATCHDOG_ERROR);
    }
    else {
      if (!empty($e[$fcv["value"]]->field_vlan)) {
        foreach ($e[$fcv["value"]]->field_vlan[$langcode] as $vlv) {
          if (!isset($dupcheck[$vlv["tid"]])) {
            $dupcheck[$vlv["tid"]] = 1;
            $tids[] = $vlv["tid"];
          }
        }
      }
    }
  }
}

foreach ($tids as $tid) {
  $term = taxonomy_term_load($tid);

  if (!is_object($term)) {
    watchdog("computed_field / taxonomy", "Can't find taxonomy term #" . $tid . ".", NULL, WATCHDOG_ERROR);
  }
  else {
    $entity_field[]["value"] = $term->name;
  }
}


---


$display_output = $entity_field_item['value'];
