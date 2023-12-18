import 'dart:collection';

void main() {
  breadthFirstSearch();
}

bool breadthFirstSearch() {
  final graph = {};
  graph["you"] = ["alice", "bob", "claire"];
  graph["bob"] = ["anuj", "peggy"];
  graph["alice"] = ["peggy"];
  graph["claire"] = ["thom", "jonny"];
  graph["anuj"] = [];
  graph["peggy"] = [];
  graph["thom"] = [];
  graph["jonny"] = [];

  final searchQueue = Queue<String>.from(graph["you"]);
  final searchedPersons = List<String>.empty(growable: true);

  while (searchQueue.isNotEmpty) {
    final person = searchQueue.removeFirst();
    if (personAlreadySearched(person, searchedPersons)) continue;
    if (personIsMangoSeller(person)) {
      print("$person is mango seller");
      return true;
    } else {
      searchQueue.addAll(graph[person].cast<String>());
      searchedPersons.add(person);
    }
  }

  return false;
}

bool personIsMangoSeller(String name) {
  if (name == "jonny") return true;
  return false;
}

bool personAlreadySearched(String name, List<String> searchedPersons) {
  return searchedPersons.contains(name);
}