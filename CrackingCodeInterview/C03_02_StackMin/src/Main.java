public class Main {

    public static void main(String[] args) {
        Stack stack = new Stack();

        stack.push(1);
        System.out.println(stack.min());

        stack.push(2);
        System.out.println(stack.min());

        stack.push(-5);
        System.out.println(stack.min());

        stack.push(-2);
        System.out.println(stack.min());

        stack.pop();
        stack.pop();
        System.out.println(stack.min());
    }
}
