import java.util.ArrayList;

public class Stack {

    private ArrayList<Integer> array = new ArrayList<>();

    public int pop() {
        int value = array.remove(array.size() - 1);
        return value;
    }

    public void push(int value) {
        array.add(value);
    }

    public int peek() {
        if (array.size() == 0) {
            return 0;
        }
        return array.get(array.size() - 1);
    }

    public int size() {
        return array.size();
    }
}
