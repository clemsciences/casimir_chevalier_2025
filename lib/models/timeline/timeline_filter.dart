class TimelineFilter {
  final bool isImportant;
  final List<String> scale;
  final List<String> theme;

  TimelineFilter({
    required this.isImportant,
    required this.scale,
    required this.theme,
  });

  bool containsScale(String scale) => this.scale.contains(scale);
  bool containsTheme(String theme) => this.theme.contains(theme);

  TimelineFilter removeScale(String scale) {
    this.scale.remove(scale);
    return copyWith(scale: this.scale);
  }

  TimelineFilter addScale(String scale) {
    if(!this.scale.contains(scale)) {
      this.scale.add(scale);
      return copyWith(scale: this.scale);
    }
    return this;
  }

  TimelineFilter removeTheme(String theme) {
    this.theme.remove(theme);
    return copyWith(theme: this.theme);
  }

  TimelineFilter addTheme(String theme) {
    if(!this.theme.contains(theme)) {
      this.theme.add(theme);
      return copyWith(theme: this.theme);
    }
    return this;
  }

  TimelineFilter switchImportance() {
    return copyWith(isImportant: !isImportant);
  }


  TimelineFilter copyWith({
    bool? isImportant,
    List<String>? scale,
    List<String>? theme,
  }) {
    return TimelineFilter(
      isImportant: isImportant ?? this.isImportant,
      scale: scale ?? this.scale,
      theme: theme ?? this.theme,
    );
  }
}
