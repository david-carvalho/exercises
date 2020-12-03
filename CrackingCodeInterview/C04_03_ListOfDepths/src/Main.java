import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        ListOfDepthsCreator listOfDepthsCreator = new ListOfDepthsCreator();

        Node<Integer> root = new Node<>(1);
        Node<Integer> node2 = new Node(2);
        Node<Integer> node3 = new Node(3);
        root.leftNode = node2;
        root.rightNode = node3;

        node2.leftNode = new Node(4);
        node2.rightNode = new Node(5);
        Node<Integer> node6 = new Node(6);
        node3.rightNode = node6;

        node6.rightNode = new Node(7);
        HashMap<Integer, ArrayList<Node<Integer>>> list = listOfDepthsCreator.createList(root);
        System.out.println(list);
    }
}
