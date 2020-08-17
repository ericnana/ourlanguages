class Languages {
  final int id;
  final String name;
  final languageCode;

  Languages(this.id, this.name, this.languageCode);

  static List<Languages> languageList() {
    return <Languages>[
      Languages(1, 'English', 'en'),
      Languages(2, 'Français', 'fr'),
    ];
  }
}
