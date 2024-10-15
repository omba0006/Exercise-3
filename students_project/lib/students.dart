import 'dart:convert';

class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    for (var person in people) {
      print('First Name: ${person['first']}, Last Name: ${person['last']}, Email: ${person['email']}');
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }
  
  void remove(String field) {
    people.removeWhere((person) => person['first'] == field);
  }
}