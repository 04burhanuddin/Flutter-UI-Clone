part of 'widgets.dart';

Widget callItem(String profile, String name, String time, IconData call, String countCall, IconData received, {onTap}) {
  return ListTile(
    leading: CircleAvatar(
      radius: 26,
      backgroundImage: NetworkImage(profile),
    ),
    title: Row(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.red,
          ),
        ),
        const SizedBox(width: 3.0),
        Text(
          '($countCall)',
          style: const TextStyle(color: white),
        )
      ],
    ),
    subtitle: Row(
      children: [
        Icon(received, size: 14.0, color: green),
        const SizedBox(
          width: 2.0,
        ),
        Text(
          time,
          style: const TextStyle(color: gray, fontSize: 12.0),
        ),
      ],
    ),
    trailing: Icon(
      call,
      size: 28.0,
      color: green,
    ),
    onTap: onTap,
  );
}
