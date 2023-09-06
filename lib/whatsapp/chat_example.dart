part of 'whatsapp.dart';

class ChatExample extends StatefulWidget {
  const ChatExample({super.key});

  @override
  State<ChatExample> createState() => _ChatExampleState();
}

class _ChatExampleState extends State<ChatExample> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return chatItem(
          contact.name,
          contact.profileUrl,
          contact.chats!.last.isRead,
          contact.chats!.last.message,
          '${contact.chatAt.month}/${contact.chatAt.day}/${contact.chatAt.year % 100}',
          contact.chats!.last.unreadCount,
          contact.online,
          onTap: () {},
        );
      },
    );
  }
}
