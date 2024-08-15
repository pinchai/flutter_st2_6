##DateTime
```dart
void main() {
  print(DateTime.now());
}
```

```dart
void main() {
  DateTime datetime = DateTime.now();
  print("Year is " + datetime.year.toString());
  print("Month is " + datetime.month.toString());
  print("Day is ${datetime.day}"); // If you don't want to use .toString
  print("Hour is " + datetime.hour.toString());
  print("Minutes is " + datetime.minute.toString());
  print("Second is " + datetime.second.toString());
}
```

##dateTime to string
```dart
void main() {
  String datetime = DateTime.now().toString();
  print(datetime);
}
```

##String to dateTime
```dart
void main() {
  String myDateInString = "2022-05-01";
  DateTime myConvertedDate = DateTime.parse(myDateInString);
  print("Year is " + myConvertedDate.year.toString());
  print("Month is " + myConvertedDate.month.toString());
  print("Day is " + myConvertedDate.day.toString());
}
```
