import java.util.ArrayList;

public class RouteFinder {

    private ArrayList<Node> path = new ArrayList<>();
    private boolean foundPath = false;

    public void findPath(Node start, Node end) {
        path.add(start);
        start.visited = true;

        for (Node connectedNode: start.connectedNodes) {
            if (!connectedNode.visited) {
                if (connectedNode == end) {
                    path.add(connectedNode);
                    foundPath = true;
                    break;
                } else {
                    findPath(connectedNode, end);
                    if (!foundPath) {
                        path.remove(path.size() - 1);
                    } else {
                        break;
                    }
                }
            }
        }
    }

    public ArrayList<Node> pathFound() {
        return path;
    }
}
