public class SumList {
    public Node sumLists(Node node1, Node node2) {
        Node resultsList = new Node();
        Node currentResultNode = resultsList;
        int remain  = 0;
        while (node1 != null || node2 != null) {
            int value1 = extractValue(node1);
            int value2 = extractValue(node2);

            int sum = value1 + value2 + remain;
            int resultValue = sum % 10;
            remain = sum / 10;

            node1 = nextValue(node1);
            node2 = nextValue(node2);

            currentResultNode.value = resultValue;
            if (node1 != null || node2 != null) {
                currentResultNode.next = new Node();
                currentResultNode = currentResultNode.next;
            }

        }
        if (remain > 0) {
            currentResultNode.next = new Node();
            currentResultNode.next.value = remain;
        }
        return resultsList;
    }

    private int extractValue(Node node) {
        return node == null ? 0 : node.value;
    }

    private Node nextValue(Node node) {
        if (node == null) {
            return null;
        }

        return node.next;
    }
}
