enum AppChoice {
  saintMartinLeBeau,
  casimirChevalier;

  static AppChoice fromString(String value) {
    switch (value) {
      case "CASIMIR":
        return casimirChevalier;
      case "SAINT-MARTIN":
        return saintMartinLeBeau;
      default:
        return casimirChevalier;
    }
  }
}
