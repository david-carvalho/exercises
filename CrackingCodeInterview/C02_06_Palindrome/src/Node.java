public class Node {
    Node next;
    int value;

    int size() {
        int counter = 1;
        Node current = this;
        while (current.next != null) {
            current = current.next;
            counter++;
        }
        return counter;
    }
}
