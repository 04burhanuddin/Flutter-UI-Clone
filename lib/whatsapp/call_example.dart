part of 'whatsapp.dart';

class CallExample extends StatefulWidget {
  const CallExample({super.key});

  @override
  State<CallExample> createState() => _CallExampleState();
}

class _CallExampleState extends State<CallExample> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(color: green, shape: BoxShape.circle),
            child: const RotationTransition(
              turns: AlwaysStoppedAnimation(-50 / 360),
              child: Icon(
                Icons.link,
                size: 26,
                color: white,
              ),
            ),
          ),
          title: const Text(
            'Create call link',
            style: TextStyle(fontWeight: FontWeight.w500, color: white),
          ),
          subtitle: const Text(
            'Share a link for you Whatsapp call',
            style: TextStyle(fontSize: 12.0, color: gray),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 6.0, bottom: 6.0),
          child: Text(
            'Recent',
            style: TextStyle(color: white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        callItem(
          'https://ui-avatars.com/api/?name=Elisa+Sartika',
          'My ❤️',
          'Today, 16:26',
          Icons.videocam,
          '2',
          Icons.call_received,
          onTap: () {},
        ),
      ],
    );
  }
}
