public class Main {

    public static void main(String[] args) {

        Stack stack = new Stack();
        stack.push(1, StackEnum.FIRST);

        stack.push(3, StackEnum.SECOND);
        stack.push(2, StackEnum.FIRST);

        stack.push(8, StackEnum.THIRD);

        stack.push(5, StackEnum.SECOND);
        stack.push(9, StackEnum.THIRD);
        System.out.println("Hello World!");
    }
}
