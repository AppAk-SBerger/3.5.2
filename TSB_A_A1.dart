// Noten-Analyse-Tool

void main() {
  List<int> grades = [2, 1, 3];
  List<int> grades2 = [2, 1, 3, 5, 2, 2, 1]; // 2te liste für Funktions-Test
  analyzeGrades(grades);
}

void analyzeGrades(List<int> grades) {
  printGrades(grades);
  calculateAndPrintAverage(grades);
}

void calculateAndPrintAverage(List<int> grades) {
  int sumGrade = 0;
  double averageGrade = 0;
  for (int grade in grades) {
    sumGrade += grade;
  }
  averageGrade = sumGrade / grades.length;
  print("Der Durchschnitt ist: ${averageGrade.toStringAsFixed(1)}");
}

void printGrades(List<int> grades) {
  int i = 0;
  for (int grade in grades) {
    i++;
    print("Note $i: $grade");
  }
}
