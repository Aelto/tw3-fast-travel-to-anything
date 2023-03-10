function FTTA_getPinPosition(manager: CCommonMapManager, pin_tag: name): Vector {
  var world: string = theGame.GetWorld().GetDepotPath();
  var pins: array<SCommonMapPinInstance>;
  var i: int;
  
  pins = manager.GetMapPinInstances(world);

  for (i = 0; i < pins.Size(); i += 1) {
    // skip normal FT pins, let the vanilla game do the job:
    if (pin.type == 'RoadSign' || pin.type == 'Harbor') {
      continue;
    }

    if (pins[i].tag == pin_tag) {
      return Vector(pins[i].position.X, pins[i].position.Y);
    }
  }

  return FTAA_getInvalidPosition();
}
