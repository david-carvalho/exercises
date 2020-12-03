public class Main {

    public static void main(String[] args) {
        Tree tree = new Tree();

        tree.addNode(new Node(10));
        tree.addNode(new Node(2));
        tree.addNode(new Node(1));
        tree.addNode(new Node(-1));
        tree.addNode(new Node(20));
        tree.addNode(new Node(15));
        tree.printTree();
    }
}
