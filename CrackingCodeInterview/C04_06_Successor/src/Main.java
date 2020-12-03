import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        Node node2 = new Node(2);
        Node node5 = new Node(5);
        Node node6 = new Node(6);
        Node node7 = new Node(7);
        Node node8 = new Node(8);
        Node node9 = new Node(9);
        Node node10 = new Node(10);
        Node node12 = new Node(12);
        Node node15 = new Node(15);
        Node node16 = new Node(16);
        Node node18 = new Node(18);
        Node node20 = new Node(20);

        setupNode(node12, node9, node15, null);
        setupNode(node9, node5, node10, node12);
        setupNode(node5, node2, node6, node9);
        setupNode(node2, null, null, node5);
        setupNode(node6, null, node7, node5);
        setupNode(node7, null, node8, node6);
        setupNode(node8, null, null, node7);
        setupNode(node10, null, null, node9);
        setupNode(node15, null, node18, node12);
        setupNode(node18, node16, node20, node15);
        setupNode(node16, null, null, node18);
        setupNode(node20, null, null, node18);

        ArrayList<Node> list = new ArrayList<>();
        list.add(node2);
        list.add(node5);
        list.add(node6);
        list.add(node7);
        list.add(node8);
        list.add(node9);
        list.add(node10);
        list.add(node12);
        list.add(node15);
        list.add(node16);
        list.add(node18);
        list.add(node20);

        Successor successor = new Successor();
        for (Node node: list) {
            System.out.println(node.value + " - " + successor.successor(node).value);
        }
    }

    private static void setupNode(Node node, Node left, Node right, Node parent) {
        node.left = left;
        node.right = right;
        node.parent = parent;
    }
}
