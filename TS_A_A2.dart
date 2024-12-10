void main() {
  int userInput = 185;
  convertMinutesToTime(userInput);
}

void convertMinutesToTime(int insertA) {
  int hours = insertA ~/ 60;
  int minutes = insertA % 60;
  print("$hours Stunden, $minutes Minuten");
}
