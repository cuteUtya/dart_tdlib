part of '../tdapi.dart';

class PushMessageContent extends TdObject {

  /// Contains content of a push message notification
  PushMessageContent();

  

  /// a PushMessageContent return type can be :
  /// * PushMessageContentHidden
  /// * PushMessageContentAnimation
  /// * PushMessageContentAudio
  /// * PushMessageContentContact
  /// * PushMessageContentContactRegistered
  /// * PushMessageContentDocument
  /// * PushMessageContentGame
  /// * PushMessageContentGameScore
  /// * PushMessageContentInvoice
  /// * PushMessageContentLocation
  /// * PushMessageContentPhoto
  /// * PushMessageContentPoll
  /// * PushMessageContentScreenshotTaken
  /// * PushMessageContentSticker
  /// * PushMessageContentText
  /// * PushMessageContentVideo
  /// * PushMessageContentVideoNote
  /// * PushMessageContentVoiceNote
  /// * PushMessageContentBasicGroupChatCreate
  /// * PushMessageContentChatAddMembers
  /// * PushMessageContentChatChangePhoto
  /// * PushMessageContentChatChangeTitle
  /// * PushMessageContentChatSetTheme
  /// * PushMessageContentChatDeleteMember
  /// * PushMessageContentChatJoinByLink
  /// * PushMessageContentMessageForwards
  /// * PushMessageContentMediaAlbum
  factory PushMessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PushMessageContentHidden.CONSTRUCTOR:
        return PushMessageContentHidden.fromJson(json);
      case PushMessageContentAnimation.CONSTRUCTOR:
        return PushMessageContentAnimation.fromJson(json);
      case PushMessageContentAudio.CONSTRUCTOR:
        return PushMessageContentAudio.fromJson(json);
      case PushMessageContentContact.CONSTRUCTOR:
        return PushMessageContentContact.fromJson(json);
      case PushMessageContentContactRegistered.CONSTRUCTOR:
        return PushMessageContentContactRegistered.fromJson(json);
      case PushMessageContentDocument.CONSTRUCTOR:
        return PushMessageContentDocument.fromJson(json);
      case PushMessageContentGame.CONSTRUCTOR:
        return PushMessageContentGame.fromJson(json);
      case PushMessageContentGameScore.CONSTRUCTOR:
        return PushMessageContentGameScore.fromJson(json);
      case PushMessageContentInvoice.CONSTRUCTOR:
        return PushMessageContentInvoice.fromJson(json);
      case PushMessageContentLocation.CONSTRUCTOR:
        return PushMessageContentLocation.fromJson(json);
      case PushMessageContentPhoto.CONSTRUCTOR:
        return PushMessageContentPhoto.fromJson(json);
      case PushMessageContentPoll.CONSTRUCTOR:
        return PushMessageContentPoll.fromJson(json);
      case PushMessageContentScreenshotTaken.CONSTRUCTOR:
        return PushMessageContentScreenshotTaken.fromJson(json);
      case PushMessageContentSticker.CONSTRUCTOR:
        return PushMessageContentSticker.fromJson(json);
      case PushMessageContentText.CONSTRUCTOR:
        return PushMessageContentText.fromJson(json);
      case PushMessageContentVideo.CONSTRUCTOR:
        return PushMessageContentVideo.fromJson(json);
      case PushMessageContentVideoNote.CONSTRUCTOR:
        return PushMessageContentVideoNote.fromJson(json);
      case PushMessageContentVoiceNote.CONSTRUCTOR:
        return PushMessageContentVoiceNote.fromJson(json);
      case PushMessageContentBasicGroupChatCreate.CONSTRUCTOR:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);
      case PushMessageContentChatAddMembers.CONSTRUCTOR:
        return PushMessageContentChatAddMembers.fromJson(json);
      case PushMessageContentChatChangePhoto.CONSTRUCTOR:
        return PushMessageContentChatChangePhoto.fromJson(json);
      case PushMessageContentChatChangeTitle.CONSTRUCTOR:
        return PushMessageContentChatChangeTitle.fromJson(json);
      case PushMessageContentChatSetTheme.CONSTRUCTOR:
        return PushMessageContentChatSetTheme.fromJson(json);
      case PushMessageContentChatDeleteMember.CONSTRUCTOR:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.CONSTRUCTOR:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentMessageForwards.CONSTRUCTOR:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentMediaAlbum.CONSTRUCTOR:
        return PushMessageContentMediaAlbum.fromJson(json);
    }
    throw new Exception('undefined type');
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'pushMessageContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentHidden extends PushMessageContent {

  /// A general message with hidden content
  PushMessageContentHidden({isPinned});

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentHidden.fromJson(Map<String, dynamic> json)  {
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentHidden';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentAnimation extends PushMessageContent {

  /// An animation message (GIF-style).
  PushMessageContentAnimation({animation,
    caption,
    isPinned});

  /// [animation] Message content; may be null 
  Animation? animation;

  /// [caption] Animation caption 
  String? caption;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentAnimation.fromJson(Map<String, dynamic> json)  {
    animation = Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    caption = json['caption'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation == null ? null : animation?.toJson(),
      "caption": caption,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentAudio extends PushMessageContent {

  /// An audio message
  PushMessageContentAudio({audio,
    isPinned});

  /// [audio] Message content; may be null 
  Audio? audio;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentAudio.fromJson(Map<String, dynamic> json)  {
    audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio == null ? null : audio?.toJson(),
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentContact extends PushMessageContent {

  /// A message with a user contact
  PushMessageContentContact({name,
    isPinned});

  /// [name] Contact's name 
  String? name;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentContact.fromJson(Map<String, dynamic> json)  {
    name = json['name'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentContactRegistered extends PushMessageContent {

  /// A contact has registered with Telegram
  PushMessageContentContactRegistered();

  

  /// Parse from a json
  PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentContactRegistered';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentDocument extends PushMessageContent {

  /// A document message (a general file)
  PushMessageContentDocument({document,
    isPinned});

  /// [document] Message content; may be null 
  Document? document;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentDocument.fromJson(Map<String, dynamic> json)  {
    document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": document == null ? null : document?.toJson(),
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGame extends PushMessageContent {

  /// A message with a game
  PushMessageContentGame({title,
    isPinned});

  /// [title] Game title, empty for pinned game message 
  String? title;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentGame.fromJson(Map<String, dynamic> json)  {
    title = json['title'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGameScore extends PushMessageContent {

  /// A new high score was achieved in a game
  PushMessageContentGameScore({title,
    score,
    isPinned});

  /// [title] Game title, empty for pinned message 
  String? title;

  /// [score] New score, 0 for pinned message 
  int? score;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentGameScore.fromJson(Map<String, dynamic> json)  {
    title = json['title'];
    score = json['score'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "score": score,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentGameScore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentInvoice extends PushMessageContent {

  /// A message with an invoice from a bot
  PushMessageContentInvoice({price,
    isPinned});

  /// [price] Product price 
  String? price;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentInvoice.fromJson(Map<String, dynamic> json)  {
    price = json['price'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "price": price,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentInvoice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentLocation extends PushMessageContent {

  /// A message with a location
  PushMessageContentLocation({isLive,
    isPinned});

  /// [isLive] True, if the location is live 
  bool? isLive;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentLocation.fromJson(Map<String, dynamic> json)  {
    isLive = json['is_live'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_live": isLive,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPhoto extends PushMessageContent {

  /// A photo message
  PushMessageContentPhoto({photo,
    caption,
    isSecret,
    isPinned});

  /// [photo] Message content; may be null 
  Photo? photo;

  /// [caption] Photo caption 
  String? caption;

  /// [isSecret] True, if the photo is secret 
  bool? isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentPhoto.fromJson(Map<String, dynamic> json)  {
    photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    caption = json['caption'];
    isSecret = json['is_secret'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo == null ? null : photo?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPoll extends PushMessageContent {

  /// A message with a poll
  PushMessageContentPoll({question,
    isRegular,
    isPinned});

  /// [question] Poll question 
  String? question;

  /// [isRegular] True, if the poll is regular and not in quiz mode 
  bool? isRegular;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentPoll.fromJson(Map<String, dynamic> json)  {
    question = json['question'];
    isRegular = json['is_regular'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "question": question,
      "is_regular": isRegular,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentPoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentScreenshotTaken extends PushMessageContent {

  /// A screenshot of a message in the chat has been taken
  PushMessageContentScreenshotTaken();

  

  /// Parse from a json
  PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentScreenshotTaken';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentSticker extends PushMessageContent {

  /// A message with a sticker
  PushMessageContentSticker({sticker,
    emoji,
    isPinned});

  /// [sticker] Message content; may be null 
  Sticker? sticker;

  /// [emoji] Emoji corresponding to the sticker; may be empty 
  String? emoji;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentSticker.fromJson(Map<String, dynamic> json)  {
    sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
    emoji = json['emoji'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker == null ? null : sticker?.toJson(),
      "emoji": emoji,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentText extends PushMessageContent {

  /// A text message
  PushMessageContentText({text,
    isPinned});

  /// [text] Message text 
  String? text;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentText.fromJson(Map<String, dynamic> json)  {
    text = json['text'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideo extends PushMessageContent {

  /// A video message
  PushMessageContentVideo({video,
    caption,
    isSecret,
    isPinned});

  /// [video] Message content; may be null 
  Video? video;

  /// [caption] Video caption 
  String? caption;

  /// [isSecret] True, if the video is secret 
  bool? isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentVideo.fromJson(Map<String, dynamic> json)  {
    video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    caption = json['caption'];
    isSecret = json['is_secret'];
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": video == null ? null : video?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideoNote extends PushMessageContent {

  /// A video note message
  PushMessageContentVideoNote({videoNote,
    isPinned});

  /// [videoNote] Message content; may be null 
  VideoNote? videoNote;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentVideoNote.fromJson(Map<String, dynamic> json)  {
    videoNote = VideoNote.fromJson(json['video_note'] ?? <String, dynamic>{});
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote == null ? null : videoNote?.toJson(),
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVoiceNote extends PushMessageContent {

  /// A voice note message
  PushMessageContentVoiceNote({voiceNote,
    isPinned});

  /// [voiceNote] Message content; may be null 
  VoiceNote? voiceNote;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool? isPinned;

  /// Parse from a json
  PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json)  {
    voiceNote = VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
    isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote == null ? null : voiceNote?.toJson(),
      "is_pinned": isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentBasicGroupChatCreate extends PushMessageContent {

  /// A newly created basic group
  PushMessageContentBasicGroupChatCreate();

  

  /// Parse from a json
  PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentBasicGroupChatCreate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatAddMembers extends PushMessageContent {

  /// New chat members were invited to a group
  PushMessageContentChatAddMembers({memberName,
    isCurrentUser,
    isReturned});

  /// [memberName] Name of the added member 
  String? memberName;

  /// [isCurrentUser] True, if the current user was added to the group
  bool? isCurrentUser;

  /// [isReturned] True, if the user has returned to the group themselves
  bool? isReturned;

  /// Parse from a json
  PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json)  {
    memberName = json['member_name'];
    isCurrentUser = json['is_current_user'];
    isReturned = json['is_returned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_returned": isReturned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatAddMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatChangePhoto extends PushMessageContent {

  /// A chat photo was edited
  PushMessageContentChatChangePhoto();

  

  /// Parse from a json
  PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatChangePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatChangeTitle extends PushMessageContent {

  /// A chat title was edited
  PushMessageContentChatChangeTitle({title});

  /// [title] New chat title
  String? title;

  /// Parse from a json
  PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json)  {
    title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatChangeTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatSetTheme extends PushMessageContent {

  /// A chat theme was edited
  PushMessageContentChatSetTheme({themeName});

  /// [themeName] If non-empty, name of a new theme, set for the chat. Otherwise chat theme was reset to the default one
  String? themeName;

  /// Parse from a json
  PushMessageContentChatSetTheme.fromJson(Map<String, dynamic> json)  {
    themeName = json['theme_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "theme_name": themeName,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatSetTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatDeleteMember extends PushMessageContent {

  /// A chat member was deleted
  PushMessageContentChatDeleteMember({memberName,
    isCurrentUser,
    isLeft});

  /// [memberName] Name of the deleted member 
  String? memberName;

  /// [isCurrentUser] True, if the current user was deleted from the group
  bool? isCurrentUser;

  /// [isLeft] True, if the user has left the group themselves
  bool? isLeft;

  /// Parse from a json
  PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json)  {
    memberName = json['member_name'];
    isCurrentUser = json['is_current_user'];
    isLeft = json['is_left'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_left": isLeft,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatDeleteMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatJoinByLink extends PushMessageContent {

  /// A new member joined the chat by invite link
  PushMessageContentChatJoinByLink();

  

  /// Parse from a json
  PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatJoinByLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentMessageForwards extends PushMessageContent {

  /// A forwarded messages
  PushMessageContentMessageForwards({totalCount});

  /// [totalCount] Number of forwarded messages
  int? totalCount;

  /// Parse from a json
  PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json)  {
    totalCount = json['total_count'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentMessageForwards';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentMediaAlbum extends PushMessageContent {

  /// A media album
  PushMessageContentMediaAlbum({totalCount,
    hasPhotos,
    hasVideos,
    hasAudios,
    hasDocuments});

  /// [totalCount] Number of messages in the album 
  int? totalCount;

  /// [hasPhotos] True, if the album has at least one photo 
  bool? hasPhotos;

  /// [hasVideos] True, if the album has at least one video
  bool? hasVideos;

  /// [hasAudios] True, if the album has at least one audio file
  bool? hasAudios;

  /// [hasDocuments] True, if the album has at least one document
  bool? hasDocuments;

  /// Parse from a json
  PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json)  {
    totalCount = json['total_count'];
    hasPhotos = json['has_photos'];
    hasVideos = json['has_videos'];
    hasAudios = json['has_audios'];
    hasDocuments = json['has_documents'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "has_photos": hasPhotos,
      "has_videos": hasVideos,
      "has_audios": hasAudios,
      "has_documents": hasDocuments,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentMediaAlbum';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}