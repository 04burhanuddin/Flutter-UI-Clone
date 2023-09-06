part of 'widgets.dart';

Widget storyItem(String profile, String name, String time, {onTap}) {
  return ListTile(
    leading: Container(
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        color: green,
        border: Border.all(color: green, width: 1),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 24.0,
        backgroundImage: NetworkImage(profile),
      ),
    ),
    title: Text(
      name,
      style: const TextStyle(fontWeight: FontWeight.w500, color: white),
    ),
    subtitle: Text(
      time,
      style: const TextStyle(color: Colors.blueGrey, fontSize: 12),
    ),
    onTap: onTap,
  );
}
