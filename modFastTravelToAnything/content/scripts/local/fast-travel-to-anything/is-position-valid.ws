function FTTA_isPositionValid(position: Vector): bool {
  return position.X != 0 && position.Y != 0;
}
function FTAA_getInvalidPosition(): Vector {
  return Vector(0, 0, 0);
}