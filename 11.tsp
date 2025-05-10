from itertools import permutations

def tsp(graph):
    n = len(graph)
    min_path = float('inf')
    for perm in permutations(range(n)):
        cost = sum(graph[perm[i]][perm[i + 1]] for i in range(n - 1)) + graph[perm[-1]][perm[0]]
        min_path = min(min_path, cost)
    return min_path

# Example usage
graph = [[0, 10, 15, 20], [10, 0, 35, 25], [15, 35, 0, 30], [20, 25, 30, 0]]
print(tsp(graph))  # Output: 80
