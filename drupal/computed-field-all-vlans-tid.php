$dupcheck = array();
$entity_field = array();

if (property_exists($entity, "field_vlan") && !empty($entity->field_vlan)) {
  foreach ($entity->field_vlan[$langcode] as $vlv) {
    if (!isset($dupcheck[$vlv["tid"]])) {
      $dupcheck[$vlv["tid"]] = 1;
      $entity_field[]["value"] = $vlv["tid"];
    }
  }
}

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
          $entity_field[]["value"] = $vlv["tid"];
        }
      }
    }
  }
}


---


$query = new EntityFieldQuery;
$result = $query
  ->entityCondition("entity_type", "taxonomy_term")
  ->propertyCondition("tid", $entity_field_item["value"])
  ->execute();

if (empty($result)) {
  watchdog("computed_field / taxonomy", "Can't find taxonomy term #" . $entity_field_item["value"] . ".", NULL, WATCHDOG_ERROR);
}
else {
  $ttids = array_keys($result["taxonomy_term"]);

  if (count($ttids) < 1) {
    watchdog("computed_field / taxonomy", "Can't find taxonomy term #" . $entity_field_item["value"] . ".", NULL, WATCHDOG_ERROR);
  }
  elseif (count($ttids) > 1) {
    watchdog("computed_field / taxonomy", "Too many results for taxonomy term #" . $entity_field_item["value"] . ".", NULL, WATCHDOG_ERROR);
  }
  else {
    $e = entity_load("taxonomy_term", array($ttids[0]));

    if (empty($e)) {
      watchdog("computed_field / taxonomy", "Can't load taxonomy term #" . $entity_field_item["value"] . ".", NULL, WATCHDOG_ERROR);
    }
    else {
      $display_output = $e[$ttids[0]]->name;
    }
  }
}
