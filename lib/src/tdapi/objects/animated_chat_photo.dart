part of '../tdapi.dart';

class AnimatedChatPhoto extends TdObject {

  /// Animated variant of a chat photo in MPEG4 format
  AnimatedChatPhoto({length,
    file,
    mainFrameTimestamp});

  /// [length] Animation width and height
  int? length;

  /// [file] Information about the animation file
  File? file;

  /// [mainFrameTimestamp] Timestamp of the frame, used as a static chat photo
  double? mainFrameTimestamp;

  /// Parse from a json
  AnimatedChatPhoto.fromJson(Map<String, dynamic> json)  {
    length = json['length'];
    file = File.fromJson(json['file'] ?? <String, dynamic>{});
    mainFrameTimestamp = json['main_frame_timestamp'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "length": length,
      "file": file == null ? null : file?.toJson(),
      "main_frame_timestamp": mainFrameTimestamp,
    };
  }

  static const CONSTRUCTOR = 'animatedChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}