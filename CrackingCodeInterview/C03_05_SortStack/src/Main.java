public class Main {

    public static void main(String[] args) {
        SortStack sortStack = new SortStack();
        Stack stack = new Stack();
        stack.push(6);
        stack.push(3);
        stack.push(2);
        stack.push(-10);
        Stack sortedStack = sortStack.sortStack(stack);
        System.out.println(sortedStack);
    }
}
