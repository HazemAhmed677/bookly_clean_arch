class PanelizationSummary {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  const PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromMap(Map<String, dynamic> data) {
    return PanelizationSummary(
      containsEpubBubbles: data['containsEpubBubbles'] as bool?,
      containsImageBubbles: data['containsImageBubbles'] as bool?,
    );
  }

  Map<String, dynamic> toMap() => {
    'containsEpubBubbles': containsEpubBubbles,
    'containsImageBubbles': containsImageBubbles,
  };
}
