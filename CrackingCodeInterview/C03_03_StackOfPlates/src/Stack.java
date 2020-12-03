import java.util.ArrayList;

public class Stack {
    private ArrayList<Node> array = new ArrayList<>();

    public Node pop() {
        if (array.size() == 0) {
            return null;
        }

        return array.remove(array.size() - 1);
    }

    public void push (Node node) {
        array.add(node);
    }

    public int size() {
        return array.size();
    }
}
