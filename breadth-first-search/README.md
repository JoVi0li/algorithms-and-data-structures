# Breadth-First Search

Breadth-First Search (BFS) is a graph traversal algorithm that explores all the vertices of a graph level by level, visiting all neighbors of a vertex before moving on to the next level.

## How it Works
The BFS algorithm follows these key steps:

1. Initialization: Start from a chosen source vertex and mark it as visited.
2. Queue: Use a queue data structure to keep track of the vertices to be visited.
3. Exploration: Visit all neighbors of the current vertex and enqueue any unvisited neighbors.
4. Dequeue: Move to the next vertex in the queue.
5. Repeat: Continue the process until all vertices are visited.