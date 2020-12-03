public class SortStack {
    public Stack sortStack(Stack stack) {
        Stack sortedStack = new Stack();
        Stack tempStack = new Stack();

        Stack sourceStack = stack;
        Stack destinationStack = new Stack();

        while(sourceStack.size() > 0) {
            int currentSmallest = sourceStack.pop();
            int size = sourceStack.size();
            for (int i = 0; i < size; i++) {
                int value = sourceStack.pop();
                if (value < currentSmallest) {
                    destinationStack.push(currentSmallest);
                    currentSmallest = value;
                } else {
                    destinationStack.push(value);
                }
            }
            sortedStack.push(currentSmallest);
            Stack temp = sourceStack;
            sourceStack = destinationStack;
            destinationStack = temp;
        }
        return sortedStack;
    }
}
