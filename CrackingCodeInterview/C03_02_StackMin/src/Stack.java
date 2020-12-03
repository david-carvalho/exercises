import java.util.ArrayList;

public class Stack {
//    private final int MAX_SIZE = 1024;
//    private int[] array = new int[MAX_SIZE];
    private ArrayList<Integer> array = new ArrayList<>();
    private ArrayList<Integer> mins = new ArrayList<>();

    public int pop() {
        int value = array.remove(array.size() - 1);
        if (value == mins.get(mins.size() - 1)) {
            mins.remove(mins.size() - 1);
        }
        return value;
    }

    public void push(int value) {
        array.add(value);

        if (mins.size() == 0) {
            mins.add(value);
            return;
        }

        if (value <= mins.get(mins.size() - 1)) {
            mins.add(value);
        }
    }

    public int min() {
        return mins.get(mins.size() - 1);
    }
}
