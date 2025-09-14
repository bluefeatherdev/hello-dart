/// Dart Keywords: [super]

/// The super keyword refers to the immediate superclass of 
/// the current class. It's used to access:

/// - Properties (fields) of the parent class
/// - Methods of the parent class
/// - Constructors of the parent class (via initializer list)

/// 1. [Accessing Parent Class Properties]:
class Parent {
  String message = 'Hello, from Parent';
}

class Child extends Parent {
  void showMessage() {
    print(super.message); // Accesses Parent's property
  }
}

/// 2. [Calling Parent Class Methods]:
class Parent2 {
  void greet() => print('Parent2 says hi');
}

class Child2 extends Parent2 {
  @override
  void greet() {
    print('Child2 says hi');
    super.greet();  // Calls Parent's method
  }
}

/// 3. [Calling Parent Constructor (Initializer List)]:
class Parent3 {
  final String name;
  Parent3(this.name);
}

class Child3 extends Parent3 {
  Child3(String name) : super(name);  // Calls Parent's constructor
}

/// 4. [Avoiding Shadowing]:
class Parent4 {
  int value = 23;
}

class Child4 extends Parent4 {
  int value = 46;

  void printValues() {
    print('Child4 value: $value');
    print('Parent4 value: ${super.value}');
  }
}

void main() { 
  /// 1. [Accessing Parent Class Properties]:
  final parent = Parent();
  print(parent.message); // Hello, from Parent

  final child = Child();
  child.showMessage();  // Hello, from Parent

  /// 2. [Calling Parent Class Methods]:
  final parent2 = Parent2();
  parent2.greet();  // Parent2 says hi

  final child2 = Child2();
  child2.greet();  // Child2 says hi && Parent2 says hi

  /// 3. [Calling Parent Constructor (Initializer List)]:
  final parent3 = Parent3('John');
  print(parent3.name);  // John

  final child3 = Child3('Mark');
  print(child3.name);  // Mark

  /// 4. [Avoiding Shadowing]:
  final child4 = Child4();
  child4.printValues(); // 46 && 23
}
