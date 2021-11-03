part of '../tdapi.dart';

class Video extends TdObject {

  /// Describes a video file
  Video({duration,
    width,
    height,
    fileName,
    mimeType,
    hasStickers,
    supportsStreaming,
    minithumbnail,
    thumbnail,
    video});

  /// [duration] Duration of the video, in seconds; as defined by the sender 
  int? duration;

  /// [width] Video width; as defined by the sender 
  int? width;

  /// [height] Video height; as defined by the sender
  int? height;

  /// [fileName] Original name of the file; as defined by the sender
  String? fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  String? mimeType;

  /// [hasStickers] True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
  bool? hasStickers;

  /// [supportsStreaming] True, if the video is supposed to be streamed
  bool? supportsStreaming;

  /// [minithumbnail] Video minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may be null
  Thumbnail? thumbnail;

  /// [video] File containing the video
  File? video;

  /// Parse from a json
  Video.fromJson(Map<String, dynamic> json)  {
    duration = json['duration'];
    width = json['width'];
    height = json['height'];
    fileName = json['file_name'];
    mimeType = json['mime_type'];
    hasStickers = json['has_stickers'];
    supportsStreaming = json['supports_streaming'];
    minithumbnail = Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
    thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    video = File.fromJson(json['video'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "width": width,
      "height": height,
      "file_name": fileName,
      "mime_type": mimeType,
      "has_stickers": hasStickers,
      "supports_streaming": supportsStreaming,
      "minithumbnail": minithumbnail == null ? null : minithumbnail?.toJson(),
      "thumbnail": thumbnail == null ? null : thumbnail?.toJson(),
      "video": video == null ? null : video?.toJson(),
    };
  }

  static const CONSTRUCTOR = 'video';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}