import java.util.HashMap;

public class DupRemover {
    public void removeDupsHash(Node node) {
        if (node == null) {
            return;
        }
        HashMap<Integer, Boolean> hash = new HashMap<>();
        Node previous = node;
        while (node != null) {
            if (hash.containsKey(node.value)) {
                previous.next = node.next;
            } else {
                hash.put(node.value, true);
            }
            previous = node;
            node = node.next;
        }
    }
}
