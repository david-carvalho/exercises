import java.util.ArrayList;

public class Stack<T> {
    private ArrayList<T> array = new ArrayList<>();

    public T pop() {
        if (array.size() == 0) {
            return null;
        }

        return array.remove(array.size() - 1);
    }

    public void push (T node) {
        array.add(node);
    }

    public int size() {
        return array.size();
    }

    public void clear() {
        array.clear();
    }
}
