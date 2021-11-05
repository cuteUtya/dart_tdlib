part of '../tdapi.dart';

class FormattedText extends TdObject {

  /// A text with some entities
  FormattedText({this.text,
    this.entities});

  /// [text] The text 
  String? text;

  /// [entities] Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.. Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline and Strikethrough entities can contain and to be contained in all other entities. All other entities can't contain each other
  List<TextEntity>? entities;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  FormattedText.fromJson(Map<String, dynamic> json)  {
    String? pre_text;
    try{
      pre_text=json['text'];
   }catch(_){}
    text = pre_text;
    List<TextEntity>? pre_entities;
    try{
      pre_entities=List<TextEntity>.from((json['entities'] ?? [])!.map((item) => TextEntity.fromJson(item ?? <String, dynamic>{})).toList());
   }catch(_){}
    entities = pre_entities;
    extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "entities": entities?.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'formattedText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}