// Zahlenanalyse

/*
// Implementiere folgende Funktionen:
void findAndPrintExtreme(List<int> numbers) {
  // Findet und gibt kleinste und größte Zahl aus
  // Zeigt auch deren Position in der Liste
}

void printNumberTypes(List<int> numbers) {
  // Zählt und gibt aus:
  // - Wie viele gerade/ungerade Zahlen
  // - Wie viele positive/negative Zahlen
}

void printDistribution(List<int> numbers) {
  // Gibt eine einfache Häufigkeitsverteilung aus
  // z.B. wie oft kommt jede Zahl vor
}

// Hauptfunktion:
void analyzeNumbers(List<int> numbers) {
  // Ruft alle Funktionen der Reihe nach auf
  // Gibt eine übersichtliche Gesamtanalyse
}
*/
void main() {
  List<int> numbersList = [4, 2, 8, 1, 8, 10, 7, 5, 8, -2];
  analyzeNumbers(numbersList);
}

void findAndPrintExtreme(List<int> numbers) {
  List<int> numbersRun = numbers;
  numbersRun.sort();
  int numbersRunLowest = numbersRun.first;
  int numbersRunHighest = numbersRun.last;
  int numberLowestPosition;
  int numberHighestPosition;
  int i = 0;

  for (int number in numbers) {
    i++;
    if (number == numbersRunLowest) {
      numberLowestPosition = i;
      print(
          "Die niedrigste Zahl ist $numbersRunLowest an Pos.-Nr.: $numberLowestPosition.");
    } else if (number == numbersRunHighest) {
      numberHighestPosition = i;
      print(
          "Die höchste Zahl ist $numbersRunHighest an Pos.-Nr.: $numberHighestPosition.");
    }
  }
}

void printNumberTypes(List<int> numbers) {
  // Zählt und gibt aus:
  // - Wie viele gerade/ungerade Zahlen
  // - Wie viele positive/negative Zahlen
  int countEven = 0;
  int countOdd = 0;
  int countPositive = 0;
  int countNegative = 0;
  int countZero = 0;

  for (int number in numbers) {
    if (number.isEven) {
      countEven++;
    }
    if (number.isOdd) {
      countOdd++;
    }
    if (number > 0) {
      countPositive++;
    }
    if (number < 0) {
      countNegative++;
    }
    if (number == 0) {
      countZero++;
    }
  }
  if ((countEven + countOdd) == (countPositive + countNegative + countZero)) {
    print("Zählung korrekt.\tgerade\tungerade\tpositiv\tnegativ");
    print(
        "\tAnzahl:\t\t$countEven\t$countOdd\t\t$countPositive\t$countNegative");
  }
}

void analyzeNumbers(List<int> numbers) {
  findAndPrintExtreme(numbers);
  printNumberTypes(numbers);
}
