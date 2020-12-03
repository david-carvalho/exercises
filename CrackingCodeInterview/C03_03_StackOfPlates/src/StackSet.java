import java.util.ArrayList;

public class StackSet {

    private final int STACK_MAX_CAPACITY = 2;
    private ArrayList<Stack> array = new ArrayList<>();

    public void push(Node node) {
        Stack lastStack = null;
        if (array.size() == 0) {
            lastStack = addNewStack();
        } else {
            lastStack = lastStack();
            if (lastStack.size() >= STACK_MAX_CAPACITY) {
                lastStack = addNewStack();
            }
        }
        lastStack.push(node);
    }

    public Node pop() {
        return pop(array.size() - 1);
    }

    public Node pop(int stackIndex) {
        if (stackIndex >= array.size() || stackIndex < 0) {
            return null;
        }
        Stack stack = array.get(stackIndex);
        Node node = stack.pop();
        if (stack.size() == 0) {
            array.remove(stackIndex);
        }
        return node;
    }

    private Stack lastStack() {
        return array.get(array.size() - 1);
    }

    private Stack addNewStack() {
        Stack stack = new Stack();
        array.add(stack);
        return stack;
    }
}
