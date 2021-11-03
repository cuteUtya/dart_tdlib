part of '../tdapi.dart';

class PageBlockListItem extends TdObject {

  /// Describes an item of a list page block
  PageBlockListItem({label,
    pageBlocks});

  /// [label] Item label 
  String? label;

  /// [pageBlocks] Item blocks
  List<PageBlock>? pageBlocks;

  /// Parse from a json
  PageBlockListItem.fromJson(Map<String, dynamic> json)  {
    label = json['label'];
    pageBlocks = List<PageBlock>.from((json['page_blocks'] ?? [])!.map((item) => PageBlock.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "label": label,
      "page_blocks": pageBlocks?.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'pageBlockListItem';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}