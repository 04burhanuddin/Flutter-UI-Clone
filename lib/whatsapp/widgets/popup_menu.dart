import 'package:flutter/material.dart';
import 'package:flutter_ui_clone/whatsapp/shared/color_constants.dart';
import 'package:flutter_ui_clone/whatsapp/widgets/widgets.dart';

PopupMenuButton popupMenuButton(_tabController) {
  int activeTabIndex = _tabController.index;
  if (activeTabIndex == 0) {
    return PopupMenuButton(
      color: slate,
      icon: const Icon(Icons.more_vert, color: gray),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      offset: const Offset(0, 50),
      itemBuilder: (BuildContext context) => [
        popupMenuItem('settings', 'Advertise'),
        popupMenuItem('businessTools', 'Business Tools'),
        popupMenuItem('newGroup', 'New Group'),
        popupMenuItem('newBroadcast', 'New Broadcast'),
        popupMenuItem('labels', 'Labels'),
        popupMenuItem('linkedDevice', 'Linked Devices'),
        popupMenuItem('starredMessage', 'Starred Messages'),
        popupMenuItem('settings', 'Settings'),
      ],
    );
  } else if (activeTabIndex == 1) {
    return PopupMenuButton(
      color: slate,
      icon: const Icon(Icons.more_vert, color: gray),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      offset: const Offset(0, 50),
      itemBuilder: (BuildContext context) => [
        popupMenuItem('settings', 'Status privacy'),
        popupMenuItem('settings', 'Status archive settings'),
        popupMenuItem('settings', 'Business tools'),
        popupMenuItem('settings', 'Settings'),
      ],
    );
  } else {
    return PopupMenuButton(
      color: slate,
      icon: const Icon(Icons.more_vert, color: gray),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      offset: const Offset(0, 50),
      itemBuilder: (BuildContext context) => [
        popupMenuItem('settings', 'Advertise'),
        popupMenuItem('settings', 'Clear a log'),
        popupMenuItem('settings', 'Business tools'),
        popupMenuItem('settings', 'Settings'),
      ],
    );
  }
}
