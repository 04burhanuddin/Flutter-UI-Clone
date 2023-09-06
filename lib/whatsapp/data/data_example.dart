import 'package:flutter_ui_clone/whatsapp/models/model_example.dart';

final List<Contact> contacts = [
  Contact(
    id: 1,
    name: 'User One',
    profileUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
    chatAt: DateTime.now(),
    lastSeen: DateTime.now(),
    online: true,
    chats: [
      Chat(sender: 'User 1', message: 'OI', unreadCount: 0, isRead: false, isMe: true, timestamp: DateTime.now()),
      Chat(sender: 'User 2', message: 'Kenapa Cuy?', unreadCount: 1, isMe: true, isRead: true, timestamp: DateTime.now()),
    ],
    status: [
      Status(
          id: 1,
          statusUrl:
              'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
          caption: 'Bodo amat cuy',
          hasSeen: true,
          createAt: DateTime.now()),
      Status(
          id: 2,
          statusUrl:
              'https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80',
          caption: 'Mu foto ?',
          hasSeen: true,
          createAt: DateTime.now()),
    ],
  ),
];
