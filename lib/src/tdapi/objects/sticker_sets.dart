part of '../tdapi.dart';

class StickerSets extends TdObject {

  /// Represents a list of sticker sets
  StickerSets({totalCount,
    sets});

  /// [totalCount] Approximate total number of sticker sets found 
  int? totalCount;

  /// [sets] List of sticker sets
  List<StickerSetInfo>? sets;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  StickerSets.fromJson(Map<String, dynamic> json)  {
    totalCount = json['total_count'];
    sets = List<StickerSetInfo>.from((json['sets'] ?? [])!.map((item) => StickerSetInfo.fromJson(item ?? <String, dynamic>{})).toList());
    extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "sets": sets?.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}