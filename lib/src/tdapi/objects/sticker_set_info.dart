part of '../tdapi.dart';

class StickerSetInfo extends TdObject {

  /// Represents short information about a sticker set
  StickerSetInfo({id,
    title,
    name,
    thumbnail,
    thumbnailOutline,
    isInstalled,
    isArchived,
    isOfficial,
    isAnimated,
    isMasks,
    isViewed,
    size,
    covers});

  /// [id] Identifier of the sticker set
  int? id;

  /// [title] Title of the sticker set 
  String? title;

  /// [name] Name of the sticker set 
  String? name;

  /// [thumbnail] Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null
  Thumbnail? thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  List<ClosedVectorPath>? thumbnailOutline;

  /// [isInstalled] True, if the sticker set has been installed by the current user
  bool? isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  bool? isArchived;

  /// [isOfficial] True, if the sticker set is official
  bool? isOfficial;

  /// [isAnimated] True, is the stickers in the set are animated 
  bool? isAnimated;

  /// [isMasks] True, if the stickers in the set are masks 
  bool? isMasks;

  /// [isViewed] True for already viewed trending sticker sets
  bool? isViewed;

  /// [size] Total number of stickers in the set
  int? size;

  /// [covers] Contains up to the first 5 stickers from the set, depending on the context. If the application needs more stickers the full sticker set needs to be requested
  List<Sticker>? covers;

  /// Parse from a json
  StickerSetInfo.fromJson(Map<String, dynamic> json)  {
    id = int.tryParse(json['id'] ?? "");
    title = json['title'];
    name = json['name'];
    thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    thumbnailOutline = List<ClosedVectorPath>.from((json['thumbnail_outline'] ?? [])!.map((item) => ClosedVectorPath.fromJson(item ?? <String, dynamic>{})).toList());
    isInstalled = json['is_installed'];
    isArchived = json['is_archived'];
    isOfficial = json['is_official'];
    isAnimated = json['is_animated'];
    isMasks = json['is_masks'];
    isViewed = json['is_viewed'];
    size = json['size'];
    covers = List<Sticker>.from((json['covers'] ?? [])!.map((item) => Sticker.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "name": name,
      "thumbnail": thumbnail == null ? null : thumbnail?.toJson(),
      "thumbnail_outline": thumbnailOutline?.map((i) => i.toJson()).toList(),
      "is_installed": isInstalled,
      "is_archived": isArchived,
      "is_official": isOfficial,
      "is_animated": isAnimated,
      "is_masks": isMasks,
      "is_viewed": isViewed,
      "size": size,
      "covers": covers?.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickerSetInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}