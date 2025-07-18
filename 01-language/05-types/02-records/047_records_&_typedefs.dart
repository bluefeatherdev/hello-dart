// Types: Records in Dart

/// You could even decide to later change the record type 
/// to a [class type] to add methods
/// class ButtonItem {
///   final String label;
///   final Icon icon;
///   final void Function()? onPressed;
///   ButtonItem({required this.label, required this.icon, this.onPressed});
///   bool get hasOnpressed => onPressed != null;
/// }

// ----------------- //

/// Or to an [extension type]:
/// extension type ButtonItem._(({String label, Icon icon, void Function()? onPressed}) _) {
///   String get label => _.label;
///   Icon get icon => _.icon;
///   void Function()? get onPressed => _.onPressed;
///   ButtonItem({required String label, required Icon icon, void Function()? onPressed})
///     : this._((label: label, icon: icon, onPressed: onPressed));
///   bool get hasOnpressed => _.onPressed != null;
/// }
void main() {
  /// You can choose to use typedefs to give the record type itself a name,
  /// and use that rather than writing out the full record type. 
  /// This method allows you to state that some fields can be null ([?]), 
  /// even if none of the current entries in the list have a null value.
   
  // typedef ButtonItem = ({String label, Icon icon, void Function()? onPressed});
  // final List<ButtonItem> buttons = [
  //   // ...
  // ];

  // ----------------- //

  // Code can work with the given button definitions 
  // the same way it would with simple class instances:
  // List<Container> widget = [
  //   for (var button in buttons)
  //     Container(
  //       margin: const EdgeInsets.all(4.0),
  //       child: OutlinedButton.icon(
  //         onPressed: button.onPressed,
  //         icon: button.icon,
  //         label: Text(button.label),
  //       ),
  //     ),
  // ];

  // ----------------- //

  /// And then create the [list] of button definitions 
  // using that type's constructors
  // final List<ButtonItem> buttons =  [
  //   ButtonItem(
  //     label: "Button I",
  //     icon: const Icon(Icons.upload_file),
  //     onPressed: () => print("Action -> Button I"),
  //   ),
  //   ButtonItem(
  //     label: "Button II",
  //     icon: const Icon(Icons.info),
  //     onPressed: () => print("Action -> Button II"),
  //   )
  // ];
}
