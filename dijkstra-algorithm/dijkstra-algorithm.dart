void main() {
  print(dijkstra());
}

dijkstra() {
  final graph = Map<String, Map>();
  final costs = Map<String, int>();
  final parents = Map<String, String>();
  final processed = List<String>.empty(growable: true);

  graph["Start"] = {};
  graph["Start"]!["A"] = 6;
  graph["Start"]!["B"] = 2;
  graph["A"] = {};
  graph["A"]!["Fin"] = 1;
  graph["B"] = {};
  graph["B"]!["A"] = 3;
  graph["B"]!["Fin"] = 5;
  graph["Fin"] = {};

  costs["A"] = 6;
  costs["B"] = 2;
  costs["Fin"] = double.maxFinite.toInt();

  parents["A"] = "Start";
  parents["B"] = "Start";
  parents["Fin"] = "";

  var node = findLowestCostNode(costs, processed);

  for (var n in graph[node]!.keys) {
    final newCost = costs[node]! + graph[node]![n] as int;
    if (newCost < costs[n]!) {
      costs[n] = newCost;
      parents[n] = node;
    }
    processed.add(node);
    node = findLowestCostNode(costs, processed);
  }

  final finalPath = "Path: ${parents[parents[parents["Fin"]]]} -> ${parents[parents["Fin"]]} -> ${parents["Fin"]} -> Fin || Cost: ${costs["Fin"]}";

  return finalPath;
}

String findLowestCostNode(Map<String, int> costs, List<String> processed) {
  final firstValue = costs.entries.first;
  int lowest = firstValue.value;
  String lowestKey = firstValue.key;

  for (var cost in costs.entries) {
    if (processed.contains(cost.key)) continue;
    if (cost.value < lowest) {
      lowest = cost.value;
      lowestKey = cost.key;
    }
  }

  return lowestKey;
}
