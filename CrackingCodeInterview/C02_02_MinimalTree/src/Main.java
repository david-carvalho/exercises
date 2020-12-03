import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {

        MinimalTree<Integer> minimalTree = new MinimalTree<>();
        ArrayList<Integer> array = new ArrayList<>();
        array.add(-15);
        array.add(10);
        array.add(12);
        array.add(50);
        array.add(100);
        array.add(600);
        Node<Integer> tree = minimalTree.minimalTreeFromArray(array);
        System.out.println(tree);
    }
}
