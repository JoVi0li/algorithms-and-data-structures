# Dijkstra's Algorithm

Dijkstra's Algorithm is a widely-used graph traversal algorithm that finds the shortest paths between nodes in a weighted graph.

## How it Works
Dijkstra's Algorithm follows these key steps:

1. Initialization: Start from a chosen source vertex and assign a tentative distance of zero to it. Assign infinity to all other vertices as their tentative distances.
2. Priority Queue: Use a priority queue to keep track of vertices with their tentative distances.
3. Exploration: Visit each neighbor of the current vertex and update their tentative distances if a shorter path is found.
3. Priority Update: Reorder the priority queue based on the updated tentative distances.
4. Repeat: Continue the process until all vertices are visited.