part of '../tdapi.dart';

class GroupCallRecentSpeaker extends TdObject {

  /// Describes a recently speaking participant in a group call
  GroupCallRecentSpeaker({participantId,
    isSpeaking});

  /// [participantId] Group call participant identifier 
  MessageSender? participantId;

  /// [isSpeaking] True, is the user has spoken recently
  bool? isSpeaking;

  /// Parse from a json
  GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json)  {
    participantId = MessageSender.fromJson(json['participant_id'] ?? <String, dynamic>{});
    isSpeaking = json['is_speaking'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "participant_id": participantId == null ? null : participantId?.toJson(),
      "is_speaking": isSpeaking,
    };
  }

  static const CONSTRUCTOR = 'groupCallRecentSpeaker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}