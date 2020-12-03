public class Successor {
    public Node successor(Node node) {
        if (node.right != null) {
            return leftMost(node.right);
        } else {
            int value = node.value;
            while (node.parent != null) {
                if (node.parent.value > value) {
                    return node.parent;
                } else {
                    node = node.parent;
                }
            }
            if (node.value < value)  {
                return new Node(Integer.MIN_VALUE);
            }
            return node;
        }
    }

    private Node leftMost(Node node) {
        while (node.left != null) {
            node = node.left;
        }

        return node;
    }
}
