public class Partition {
    public Node partition(Node node, int value) {
        Node initialTail = findTail(node);
        Node tail = initialTail ;
        Node root = node;
        Node previous = null;
        while (node != initialTail && node != null) {
            if (node.value >= value) {
                if (previous == null) {
                    root = node.next;
                } else {
                    previous.next = node.next;
                }

                tail.next = node;
                tail = node;

                node = node.next;
                tail.next = null;
            } else {
                previous = node;
                node = node.next;
            }
        }
        return root;
    }

    private Node findTail(Node node) {
        Node tail = node;
        while (node != null) {
            tail = node;
            node = node.next;
        }
        return tail;
    }
}
