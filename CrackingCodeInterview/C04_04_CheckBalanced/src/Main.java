public class Main {

    public static void main(String[] args) {
        Node node1 = new Node(1);
        Node node2 = new Node(2);
        Node node3 = new Node(3);
        Node node4 = new Node(4);
        Node node5 = new Node(5);
        Node node6 = new Node(6);
        Node node7 = new Node(7);
        Node node8 = new Node(8);
        Node node9 = new Node(9);
        Node node10 = new Node(10);
        Node node11 = new Node(11);


        node1.leftNode = node2;
        node1.rightNode = node3;

        node2.leftNode = node4;
        node2.rightNode = node7;

        node4.leftNode = node5;

        node7.rightNode = node8;

        node8.rightNode = node9;

        node3.leftNode = node11;
        node3.rightNode = node6;

        node6.rightNode = node10;

        System.out.println(new BalancedChecker().isBalanced(node3));
    }
}
