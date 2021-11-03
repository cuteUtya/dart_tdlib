part of '../tdapi.dart';

class GetMessageImportConfirmationText extends TdFunction {

  /// Returns a confirmation text to be shown to the user before starting message import
  GetMessageImportConfirmationText({chatId});

  /// [chatId] Identifier of a chat to which the messages will be imported. It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with can_change_info administrator right
  int? chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMessageImportConfirmationText.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageImportConfirmationText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}