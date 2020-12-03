public class Node<T> {
    Node<T> leftNode;
    Node<T> rightNode;

    private T value;

    Node(T value) {
        this.value = value;
    }
}
