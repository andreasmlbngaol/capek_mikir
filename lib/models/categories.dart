enum Categories {
  programming,
  game,
  history,
  language
}

extension CategoriesExt on Categories {
  // String get displayName {
  //   return name
  //       .toLowerCase()
  //       .replaceAll("_", " ")
  //       .split(' ')
  //       .map((word) =>
  //   word.isEmpty
  //       ? word
  //       : "${word[0].toUpperCase()}${word.substring(1)}"
  //   )
  //       .join(' ');
  // }
  String get displayName {
    switch (this) {
      case Categories.programming:
        return "Pemob";
      case Categories.game:
        return "Game";
      case Categories.history:
        return "Sejarah";
      case Categories.language:
        return "Bahasa";
      }
  }
}