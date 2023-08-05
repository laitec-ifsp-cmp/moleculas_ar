T enumFromString<T extends Enum>(List<T> values, String s) {
  return values.firstWhere((element) => element.index.toString() == s);
}