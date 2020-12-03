import java.util.ArrayList;

public class TreeIterator {
    public Node ktoLastArray(Node node, int k) {
        ArrayList<Node> array = new ArrayList<>();
        while (node != null) {
            array.add(node);
            node = node.next;
        }
        return array.get(array.size() - k - 1);
    }

    public Node ktoLastPointers(Node node, int k) {
        Node base = node;
        Node runner = node;
        for (int i = 0; i <= k; i++) {
            runner = runner.next;
        }

        while (runner != null) {
            base = base.next;
            runner = runner.next;
        }

        return base;
    }
}
