part of '../tdapi.dart';

class ChatPhotos extends TdObject {

  /// Contains a list of chat or user profile photos
  ChatPhotos({totalCount,
    photos});

  /// [totalCount] Total number of photos 
  int? totalCount;

  /// [photos] List of photos
  List<ChatPhoto>? photos;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatPhotos.fromJson(Map<String, dynamic> json)  {
    totalCount = json['total_count'];
    photos = List<ChatPhoto>.from((json['photos'] ?? [])!.map((item) => ChatPhoto.fromJson(item ?? <String, dynamic>{})).toList());
    extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "photos": photos?.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatPhotos';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}