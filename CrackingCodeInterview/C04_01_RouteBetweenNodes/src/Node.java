import java.util.ArrayList;

public class Node {
    int value;
    boolean visited;
    ArrayList<Node> connectedNodes = new ArrayList<>();

    Node(int value) {
        this.value = value;
    }
}
