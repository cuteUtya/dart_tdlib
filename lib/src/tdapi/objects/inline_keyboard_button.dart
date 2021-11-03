part of '../tdapi.dart';

class InlineKeyboardButton extends TdObject {

  /// Represents a single button in an inline keyboard
  InlineKeyboardButton({text,
    type});

  /// [text] Text of the button 
  String? text;

  /// [type] Type of the button
  InlineKeyboardButtonType? type;

  /// Parse from a json
  InlineKeyboardButton.fromJson(Map<String, dynamic> json)  {
    text = json['text'];
    type = InlineKeyboardButtonType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "type": type == null ? null : type?.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButton';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}