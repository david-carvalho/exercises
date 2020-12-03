public class Main {

    public static void main(String[] args) {
        Node root = new Node(5);
        Node node2 = new Node(2);
        Node node8 = new Node(8);
        root.left = node2;
        root.right = node8;

        node2.left = new Node(1);

        Node node7 = new Node(7);
        node8.left = node7;
        Node node9 = new Node(9);
        node8.right = node9;

        node2.right = new Node(3);

        BSTValidator validator = new BSTValidator();
        System.out.println(validator.validate(root));
    }
}
