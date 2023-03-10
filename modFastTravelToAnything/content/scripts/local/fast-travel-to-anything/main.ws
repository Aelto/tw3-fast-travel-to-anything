function FTTA_onLocalFastTravelPin(manager: CCommonMapManager, pin_tag: name): bool {
  var destination: Vector = FTTA_getPinPosition(manager, pin_tag);

  LogChannel('FTTA', "FTTA_onLocalFastTravelPin(), position = " + VecToString(destination));

  if (!FTTA_isPositionValid(destination)) {
    return false;
  }

  thePlayer.DebugTeleportToPin(destination.X, destination.Y);

  return true;
}

