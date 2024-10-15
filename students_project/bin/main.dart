import 'dart:convert'; 
import 'package:students_project/students.dart'; 

void main() {
  String json = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  // Convert JSON string to List<Map<String, String>>
  List<Map<String, String>> studentList = List<Map<String, String>>.from(
    jsonDecode(json).map((student) => Map<String, String>.from(student))
  );

  Students students = Students(studentList);

  print('Before sorting:');
  students.output();

  students.sort('last'); 
  print('\nAfter sorting by last name:');
  students.output();

  students.plus({'first': 'John', 'last': 'Doe', 'email': 'john.doe@example.com'});
  print('\nAfter adding a new student:');
  students.output();

  students.remove('Adesh');
  print('\nAfter removing Adesh:');
  students.output();
}