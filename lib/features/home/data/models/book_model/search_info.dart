class SearchInfo {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromMap(Map<String, dynamic> data) =>
      SearchInfo(textSnippet: data['textSnippet'] as String?);

  Map<String, dynamic> toMap() => {'textSnippet': textSnippet};
}
