import java.util.ArrayList;
import java.util.HashMap;

public class ListOfDepthsCreator<T> {
    private HashMap<Integer, ArrayList<Node<T>>> depths = new HashMap<>();

    public HashMap<Integer, ArrayList<Node<T>>> createList(Node<T> root) {
        depths.clear();
        add(root, 0);
        return depths;
    }

    private void add(Node<T> node, int depth) {
        ArrayList<Node<T>> array = depths.get(depth);
        if (array == null) {
            array = new ArrayList<>();
            depths.put(depth, array);
        }

        array.add(node);
        if (node.leftNode != null) {
            add(node.leftNode, depth + 1);
        }

        if (node.rightNode != null) {
            add(node.rightNode, depth + 1);
        }
    }

}
