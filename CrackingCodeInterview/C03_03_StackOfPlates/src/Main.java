public class Main {

    public static void main(String[] args) {

        StackSet stackSet = new StackSet();

        stackSet.push(new Node(1));
        stackSet.push(new Node(2));
        stackSet.push(new Node(3));
        stackSet.push(new Node(4));
        stackSet.push(new Node(5));
        System.out.println(stackSet);
        stackSet.pop();
        stackSet.pop();
        System.out.println(stackSet);
        stackSet.pop();
        stackSet.pop();
        stackSet.pop();
        stackSet.pop();
        stackSet.pop();
        stackSet.pop();
        stackSet.pop();
        System.out.println(stackSet);

        stackSet.push(new Node(1));
        stackSet.push(new Node(2));
        stackSet.push(new Node(3));
        stackSet.push(new Node(4));
        stackSet.push(new Node(5));
        stackSet.push(new Node(6));
        stackSet.push(new Node(7));
        stackSet.push(new Node(8));
        stackSet.pop(2);
        stackSet.pop(2);
        System.out.println(stackSet);
        stackSet.pop(7);
        stackSet.pop(7);
        System.out.println(stackSet);
        stackSet.pop(2);
        stackSet.pop(2);
        System.out.println(stackSet);
        stackSet.pop(0);
        stackSet.pop(0);
        System.out.println(stackSet);

    }
}
