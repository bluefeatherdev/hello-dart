/// Get Superclass & used Mixins from a Base Class
/// Using: [dart:mirrors]

import 'dart:mirrors';

class MixinAnalysis {
  final String? superclass;
  final List<String> mixins;

  const MixinAnalysis({this.superclass, required this.mixins});

  @override
  String toString() =>
    'Superclass: $superclass\nMixins: ${mixins.isEmpty ? 'None' : mixins.join(', ')}';
}

MixinAnalysis analyzeClassMixins(Type type) {
  final mirror = reflectClass(type);
  final typeChain = <String>[];

  ClassMirror? current = mirror.superclass;

  // Extract automatically generated type chain
  while (current != null && current.reflectedType.toString().startsWith('_')) {
    typeChain.add(current.reflectedType.toString());
    current = current.superclass;
  }

  // Nominal superclass (outside the confusing mixins)
  final superClass = current?.reflectedType.toString();

  // Find the compound name generated
  final fullName = typeChain.firstWhere(
    (name) => name.contains('&'),
    orElse: () => '',
  );

  final parts = fullName.split('&');
  final mixins = parts.length > 2 ? parts.sublist(2) : <String>[];

  return MixinAnalysis(superclass: superClass, mixins: mixins);
}
