part of 'widgets.dart';

PopupMenuItem<String> popupMenuItem(String value, String text) {
  return PopupMenuItem<String>(
    value: value,
    child: Row(
      children: [
        Text(text, style: const TextStyle(color: white)),
      ],
    ),
  );
}
