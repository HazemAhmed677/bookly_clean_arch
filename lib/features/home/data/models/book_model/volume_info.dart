import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromMap(Map<String, dynamic> data) => VolumeInfo(
    title: data['title'] as String?,
    authors: (data['authors'] as List<dynamic>?)?.cast<String>(),
    publisher: data['publisher'] as String?,
    publishedDate: data['publishedDate'] as String?,
    description: data['description'] as String?,
    industryIdentifiers:
        (data['industryIdentifiers'] as List<dynamic>?)
            ?.map((e) => IndustryIdentifier.fromMap(e as Map<String, dynamic>))
            .toList(),
    readingModes:
        data['readingModes'] == null
            ? null
            : ReadingModes.fromMap(
              data['readingModes'] as Map<String, dynamic>,
            ),
    pageCount: data['pageCount'] as int?,
    printType: data['printType'] as String?,
    categories: (data['categories'] as List<dynamic>?)?.cast<String>(),
    maturityRating: data['maturityRating'] as String?,
    allowAnonLogging: data['allowAnonLogging'] as bool?,
    contentVersion: data['contentVersion'] as String?,
    panelizationSummary:
        data['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromMap(
              data['panelizationSummary'] as Map<String, dynamic>,
            ),
    imageLinks:
        data['imageLinks'] == null
            ? null
            : ImageLinks.fromMap(data['imageLinks'] as Map<String, dynamic>),
    language: data['language'] as String?,
    previewLink: data['previewLink'] as String?,
    infoLink: data['infoLink'] as String?,
    canonicalVolumeLink: data['canonicalVolumeLink'] as String?,
  );

  Map<String, dynamic> toMap() => {
    'title': title,
    'authors': authors,
    'publisher': publisher,
    'publishedDate': publishedDate,
    'description': description,
    'industryIdentifiers': industryIdentifiers?.map((e) => e.toMap()).toList(),
    'readingModes': readingModes?.toMap(),
    'pageCount': pageCount,
    'printType': printType,
    'categories': categories,
    'maturityRating': maturityRating,
    'allowAnonLogging': allowAnonLogging,
    'contentVersion': contentVersion,
    'panelizationSummary': panelizationSummary?.toMap(),
    'imageLinks': imageLinks?.toMap(),
    'language': language,
    'previewLink': previewLink,
    'infoLink': infoLink,
    'canonicalVolumeLink': canonicalVolumeLink,
  };
}
