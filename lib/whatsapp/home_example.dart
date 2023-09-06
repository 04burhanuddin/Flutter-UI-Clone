part of 'whatsapp.dart';

class WhatsAppExample extends StatefulWidget {
  const WhatsAppExample({super.key});

  @override
  State<WhatsAppExample> createState() => _WhatsAppExampleState();
}

class _WhatsAppExampleState extends State<WhatsAppExample> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final Color labelColors = green;
  int activeTabIndex = 0;

  List<Widget> tabView = [
    const ChatExample(),
    const StatusExample(),
    const CallExample(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_updateFloatingActionBar);
  }

  void _updateFloatingActionBar() {
    setState(() {});
  }

  bool callView = true;

  void _onTabTapped(int index) {
    setState(() {
      activeTabIndex = index;
      if (activeTabIndex == 1) {
        for (var data in contacts) {
          data.status!.last.hasSeen = false;
        }
      }
      if (activeTabIndex == 2) {
        callView = false;
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int totalUnread = 0;
    bool badge = true;
    for (var data in contacts) {
      totalUnread += data.chats!.where((chat) => chat.unreadCount > 0).length ?? 0;
      badge = data.status!.last.hasSeen;
    }
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: const Text(
          'WhatsApp Business',
          style: TextStyle(color: gray, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo_camera_outlined,
              color: gray,
            ),
          ),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CostumeDelegateSearch());
            },
            icon: const Icon(
              Icons.search,
              color: gray,
            ),
          ),
          popupMenuButton(_tabController),
        ],
        backgroundColor: slate,
        bottom: TabBar(
          onTap: _onTabTapped,
          unselectedLabelColor: gray,
          controller: _tabController,
          indicatorWeight: 3.0,
          indicatorColor: green,
          dividerColor: slate,
          labelColor: green,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              child: Badge(
                offset: const Offset(20, 0),
                label: Text(
                  totalUnread.toString(),
                  style: const TextStyle(color: black, fontSize: 12),
                ),
                alignment: Alignment.centerRight,
                backgroundColor: activeTabIndex == 0 ? green : gray,
                child: const Text('Chat'),
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Status'),
                  SizedBox(width: 4),
                  Badge(isLabelVisible: badge, alignment: Alignment.center, backgroundColor: activeTabIndex == 1 ? green : gray),
                ],
              ),
            ),
            Tab(
              child: Badge(
                isLabelVisible: callView,
                offset: const Offset(20, 0),
                label: const Text(
                  '2',
                  style: TextStyle(color: black, fontSize: 12),
                ),
                alignment: Alignment.centerRight,
                backgroundColor: activeTabIndex == 2 ? green : gray,
                child: const Text('Calls'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floatingButton(_tabController),
      body: TabBarView(
        controller: _tabController,
        children: tabView,
      ),
    );
  }
}
