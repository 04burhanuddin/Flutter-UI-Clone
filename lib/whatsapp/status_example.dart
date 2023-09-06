part of 'whatsapp.dart';

class StatusExample extends StatefulWidget {
  const StatusExample({super.key});

  @override
  State<StatusExample> createState() => _StatusExampleState();
}

String formatTime(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);
  if (difference.inSeconds < 60) {
    return '${difference.inSeconds} Seconds ago';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} Minutes ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} Hours ago';
  } else {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    final formattedDate = formatter.format(dateTime);
    return 'Yesterday $formattedDate';
  }
}

class _StatusExampleState extends State<StatusExample> {
  bool isWidgetVisible = true;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: isWidgetVisible ? contacts.length + 1 : contacts.length,
      itemBuilder: (context, index) {
        if (index == 0 && isWidgetVisible) {
          return const AddStatus();
        } else {
          final status = contacts[index - 1];
          return storyItem(
            status.profileUrl,
            status.name,
            formatTime(status.status!.last.createAt),
            onTap: () {},
          );
        }
      },
    );
  }
}

class AddStatus extends StatelessWidget {
  const AddStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: const NetworkImage('https://avatars.githubusercontent.com/u/72679156?v=4'),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(color: green, border: Border.all(color: black, width: 2), shape: BoxShape.circle),
                child: const Icon(
                  Icons.add,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          title: const Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.w500, color: white),
          ),
          subtitle: const Text(
            'Tap to add status update',
            style: TextStyle(fontSize: 12, color: gray),
          ),
          onTap: () {},
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 6, bottom: 6),
          child: Text(
            'Recent Updates',
            style: TextStyle(
              color: gray,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
