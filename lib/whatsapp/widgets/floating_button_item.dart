part of 'widgets.dart';

Widget floatingButton(_tabController) {
  Color fabBg = green;
  int activeTabIndex = _tabController.index;
  if (activeTabIndex == 0) {
    return FloatingActionButton(
      backgroundColor: fabBg,
      onPressed: () {},
      child: const Icon(
        Icons.chat,
        color: black,
      ),
    );
  } else if (activeTabIndex == 1) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton.small(
          backgroundColor: gray,
          onPressed: () {},
          child: const Icon(Icons.edit, color: white, size: 20),
        ),
        const SizedBox(height: 12),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: fabBg,
          child: const Icon(
            Icons.photo_camera,
            color: black,
          ),
        ),
      ],
    );
  } else {
    return FloatingActionButton(
      backgroundColor: fabBg,
      onPressed: () {},
      child: const Icon(
        Icons.add_call,
        color: black,
      ),
    );
  }
}
