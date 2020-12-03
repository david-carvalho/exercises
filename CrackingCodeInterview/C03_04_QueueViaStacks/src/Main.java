public class Main {

    public static void main(String[] args) {
        Queue<Integer> queue = new Queue<>();
        queue.add(1);
        queue.add(2);
        queue.add(3);
        System.out.println(queue);
        queue.remove();
        System.out.println(queue);
        queue.remove();
        queue.remove();
        queue.remove();
        System.out.println(queue);
        queue.add(4);
        queue.add(5);
        System.out.println(queue);
        queue.remove();
        System.out.println(queue);
    }
}
