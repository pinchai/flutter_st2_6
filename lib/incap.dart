class Person {
  String? _name;
  String? _gender;
  int? _age;

  set to_name(String? name_value) => this._name = name_value;
  String? get name => this._name;
}