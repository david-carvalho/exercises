public class Queue<T> {
    private Stack<T> mainStack = new Stack();
    private Stack<T> auxStack = new Stack();

    public void add(T node) {
        if (auxStack.size() > 0) {
            moveAuxStackToMainStack();
        }
        mainStack.push(node);
    }

    public T remove() {
        if (auxStack.size() > 0) {
            return auxStack.pop();
        }
        moveMainStackToAuxStack();
        return auxStack.pop();
    }

    private void moveMainStackToAuxStack() {
        while (mainStack.size() > 0) {
            auxStack.push(mainStack.pop());
        }
    }

    private void moveAuxStackToMainStack() {
        while (auxStack.size() > 0) {
            mainStack.push(auxStack.pop());
        }
    }
}
