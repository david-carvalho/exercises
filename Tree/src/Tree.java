import java.util.ArrayList;

public class Tree {
    private Node root;
    private ArrayList<ArrayList<Node>> descriptionArray = new ArrayList<>();

    void addNode(Node node) {
        if (root == null) {
            root = node;
            return;
        }

        root.add(node);

        if (root.isUnbalanced()) {
            root = root.rebalance(root);
        }
    }

    int height() {
        if (root == null) {
            return 0;
        }

        return root.height() + 1;
    }

    void printTree() {
        descriptionArray.clear();
        addToDescriptionArray(root, 0);

        StringBuilder descriptionString = new StringBuilder();
        for (ArrayList<Node> array : descriptionArray) {
            for (Node node : array) {
                descriptionString.append("|");
                descriptionString.append(node.value);
            }
            descriptionString.append("|\n");
        }
        System.out.println(descriptionString.toString());
    }

    private void addToDescriptionArray(Node node, int level) {
        if (descriptionArray.size() <= level) {
            descriptionArray.add(level, new ArrayList<>());
        }

        descriptionArray.get(level).add(node);

        if (node.leftNode != null) {
            addToDescriptionArray(node.leftNode, level + 1);
        }

        if (node.rightNode != null) {
            addToDescriptionArray(node.rightNode, level + 1);
        }


    }
}
