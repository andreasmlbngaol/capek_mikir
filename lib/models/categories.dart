enum Categories {
  programming,
  game,
  history,
  language
}

extension CategoriesExt on Categories {
  String get displayName {
    return name
        .toLowerCase()
        .replaceAll("_", " ")
        .split(' ')
        .map((word) =>
    word.isEmpty
        ? word
        : "${word[0].toUpperCase()}${word.substring(1)}"
    )
        .join(' ');
  }
}