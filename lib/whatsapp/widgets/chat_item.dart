part of 'widgets.dart';

Widget chatItem(String name, String profileUrl, bool isRead, String chat, String chatAt, int unreadCount, bool online, {onTap}) {
  return ListTile(
    onTap: onTap,
    leading: CircleAvatar(
      radius: 24,
      backgroundImage: NetworkImage(profileUrl),
    ),
    title: Text(
      name,
      style: const TextStyle(color: white, fontWeight: FontWeight.w500),
    ),
    subtitle: Row(
      children: [
        (online == true)
            ? Icon(Icons.done_all, size: 18.0, color: (isRead == true) ? Colors.blue : Colors.grey)
            : const Icon(
                Icons.done,
                size: 18.0,
                color: Colors.grey,
              ),
        const SizedBox(width: 4),
        Text(
          chat,
          style: const TextStyle(color: gray, fontSize: 12),
        ),
      ],
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          chatAt.toString(),
          style: const TextStyle(fontSize: 10.0, color: gray),
        ),
        const SizedBox(height: 4),
        (isRead == true)
            ? Container(
                height: 24,
                width: 24,
                color: Colors.transparent,
              )
            : ClipOval(
                child: Container(
                  height: 24,
                  width: 24,
                  color: green,
                  child: Center(
                    child: Text(
                      unreadCount.toString(),
                      style: const TextStyle(color: black, fontSize: 10.0),
                    ),
                  ),
                ),
              ),
      ],
    ),
  );
}
