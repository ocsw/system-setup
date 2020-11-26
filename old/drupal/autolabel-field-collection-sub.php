<?php
  $label = (isset($entity->field_ip[$language][0]["start"]) ? long2ip($entity->field_ip[$language][0]["start"]) : "");

  // we get called twice when a new field collection is added;
  // the first time, the entity properties are different, so skip it
  if (!property_exists($entity, "is_new") || !$entity->is_new) {
    $query = new EntityFieldQuery();
    $result = $query
        ->entityCondition("entity_type", "field_collection_item")
        ->fieldCondition($entity->field_name, "value", $entity->item_id)
        ->execute();

    if (empty($result)) {
      watchdog("auto_entitylabel / field_collection", "No containing entity found for field collection item #" . $entity->item_id . ".", NULL, WATCHDOG_ERROR);
    }
    else {
      $fcids = array_keys($result["field_collection_item"]);

      if (count($fcids) < 1) {
        watchdog("auto_entitylabel / field_collection", "No containing entity found for field collection item #" . $entity->item_id . ".", NULL, WATCHDOG_ERROR);
      }
      elseif (count($fcids) > 1) {
        watchdog("auto_entitylabel / field_collection", "More than one containing entity found for field collection item #" . $entity->item_id . ".", NULL, WATCHDOG_ERROR);
      }
      else {
        $e = entity_load("node", array($nids[0]));

        if (empty($e)) {
          watchdog("auto_entitylabel / field_collection", "Can't load containing entity (" . $nids[0] . ") for field collection item #" . $entity->item_id . ".", NULL, WATCHDOG_ERROR);
        }
        else {
          $label = $e[$nids[0]]->title . "-" . $label;
        }
      }
    }
  }

  print($label);
?>
