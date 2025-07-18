// Types: Records in Dart
void main() {
  // Records only hold data. When that's all you need, 
  // they're immediately available and easy to use 
  // without needing to declare any new classes.
  final buttons = [
    (
      label: "Button I",
      // icon: const Icon(Icons.upload_file),
      onPressed: () => print("Action -> Button I"),
    ), 
    (
      label: "Button II",
      // icon: const Icon(Icons.info),
      onPressed: () => print("Action -> Button II"),
    )
  ];

  // Show results
  print(buttons);
}
