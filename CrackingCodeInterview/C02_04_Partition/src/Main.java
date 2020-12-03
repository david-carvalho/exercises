public class Main {

    public static void main(String[] args) {
        Node node7 = new Node(1, null);
        Node node6 = new Node(2, node7);
        Node node5 = new Node(10, node6);
        Node node4 = new Node(5, node5);
        Node node3 = new Node(8, node4);
        Node node2 = new Node(5, node3);
        Node node = new Node(3, node2);

        Node root = new Node(6, node);
        Node partitionedList = new Partition().partition(root, 5);
        System.out.println(partitionedList);
    }
}
