enum Apartment {
  one(1, 'C20', 'C23'),
  two(2, 'D20', 'D23'),
  three(3, 'E20', 'E23'),
  four(4, 'F20', 'F23'),
  ;

  final int number;
  final String coldWaterCell;
  final String hotWaterCell;

  const Apartment(this.number, this.coldWaterCell, this.hotWaterCell);
}
