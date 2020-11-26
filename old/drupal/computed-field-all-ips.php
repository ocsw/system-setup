$dupcheck = array();
$entity_field = array();

if (property_exists($entity, "field_ip") && !empty($entity->field_ip)) {
  foreach ($entity->field_ip[$langcode] as $ipv) {
    if (!isset($dupcheck[$ipv["start"]])) {
      $dupcheck[$ipv["start"]] = 1;
      $entity_field[]["value"] = $ipv["start"];
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
      if (!empty($e[$fcv["value"]]->field_ip)) {
        foreach ($e[$fcv["value"]]->field_ip[$langcode] as $ipv) {
          if (!isset($dupcheck[$ipv["start"]])) {
            $dupcheck[$ipv["start"]] = 1;
            $entity_field[]["value"] = $ipv["start"];
          }
        }
      }
    }
  }
}


---


$display_output = long2ip($entity_field_item["value"]);
