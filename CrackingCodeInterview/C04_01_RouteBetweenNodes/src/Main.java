public class Main {

    public static void main(String[] args) {

        Node g1 = new Node(1);
        Node g2 = new Node(2);
        Node g3 = new Node(3);
        Node g4 = new Node(4);
        Node g5 = new Node(5);
        Node g6 = new Node(6);

        g1.connectedNodes.add(g2);
        g1.connectedNodes.add(g3);

        g2.connectedNodes.add(g5);
        g2.connectedNodes.add(g6);

        g3.connectedNodes.add(g1);
        g3.connectedNodes.add(g5);

        g5.connectedNodes.add(g4);
        g5.connectedNodes.add(g1);

        g6.connectedNodes.add(g1);
        g6.connectedNodes.add(g2);

        RouteFinder routeFinder = new RouteFinder();
        routeFinder.findPath(g5, g6);
        System.out.println(routeFinder.pathFound());
    }
}
