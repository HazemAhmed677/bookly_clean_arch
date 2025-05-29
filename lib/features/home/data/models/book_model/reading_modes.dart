class ReadingModes {
  final bool? text;
  final bool? image;

  const ReadingModes({this.text, this.image});

  factory ReadingModes.fromMap(Map<String, dynamic> data) =>
      ReadingModes(text: data['text'] as bool?, image: data['image'] as bool?);

  Map<String, dynamic> toMap() => {'text': text, 'image': image};
}
