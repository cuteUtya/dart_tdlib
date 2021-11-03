part of '../tdapi.dart';

class Document extends TdObject {

  /// Describes a document of any type
  Document({fileName,
    mimeType,
    minithumbnail,
    thumbnail,
    document});

  /// [fileName] Original name of the file; as defined by the sender 
  String? fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  String? mimeType;

  /// [minithumbnail] Document minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [thumbnail] Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null 
  Thumbnail? thumbnail;

  /// [document] File containing the document
  File? document;

  /// Parse from a json
  Document.fromJson(Map<String, dynamic> json)  {
    fileName = json['file_name'];
    mimeType = json['mime_type'];
    minithumbnail = Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
    thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    document = File.fromJson(json['document'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": fileName,
      "mime_type": mimeType,
      "minithumbnail": minithumbnail == null ? null : minithumbnail?.toJson(),
      "thumbnail": thumbnail == null ? null : thumbnail?.toJson(),
      "document": document == null ? null : document?.toJson(),
    };
  }

  static const CONSTRUCTOR = 'document';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}