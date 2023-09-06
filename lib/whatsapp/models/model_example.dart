class Contact {
  int id;
  String name;
  String profileUrl;
  DateTime chatAt;
  DateTime lastSeen;
  List<Chat>? chats;
  List<Status>? status;
  bool online;

  Contact({
    required this.id,
    required this.name,
    required this.profileUrl,
    required this.chatAt,
    required this.lastSeen,
    required this.chats,
    required this.status,
    required this.online,
  });
}

class Chat {
  String sender;
  String message;
  int unreadCount;
  DateTime timestamp;
  bool isRead;
  bool isMe;

  Chat({
    required this.sender,
    required this.message,
    required this.unreadCount,
    required this.timestamp,
    required this.isRead,
    required this.isMe,
  });
}

class Status {
  int id;
  String statusUrl;
  String caption;
  DateTime createAt;
  bool hasSeen;

  Status({
    required this.id,
    required this.statusUrl,
    required this.caption,
    required this.createAt,
    required this.hasSeen,
  });
}
