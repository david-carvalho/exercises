import java.util.ArrayList;

public class MinimalTree<T> {
    public Node<T> minimalTreeFromArray(ArrayList<T> array) {
        if (array.size() == 0) {
            return null;
        }

        if (array.size() == 1) {
            return new Node<>(array.get(0));
        }
        int position = calculateMiddlePosition(array);
        Node<T> node = new Node<>(array.get(position));

        node.leftNode = minimalTreeFromArray(splitArray(array, 0, position));
        node.rightNode = minimalTreeFromArray(splitArray(array, position + 1, array.size()));
        return node;
    }

    private ArrayList<T> splitArray(ArrayList<T> array, int start, int end) {
        ArrayList<T> subArray = new ArrayList<>();
        subArray.addAll(array.subList(start, end));
        return subArray;
    }

    private int calculateMiddlePosition(ArrayList<T> array) {
        return array.size() / 2;
    }
}
