public class Main {

    public static void main(String[] args) {

        DupRemover dupRemover = new DupRemover();
        Node node1 = new Node(1);
        Node node12 = new Node(1);
        Node node3 = new Node(2);
        Node node4 = new Node(3);

        node1.next = node12;
        dupRemover.removeDupsHash(node1);
        System.out.println(node1);

        node1.next = node12;
        node12.next = node3;
        node3.next = node4;
        dupRemover.removeDupsHash(node1);
        System.out.println(node1);
    }
}
