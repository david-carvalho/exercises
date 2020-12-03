public class Node {
    Node leftNode;
    Node rightNode;

    int value = 0;

    Node(int value) {
        this.value = value;
    }

    void add(Node node) {
        if (value > node.value) {
            addToLeft(node);
            leftNode = leftNode.rebalance(leftNode);
        } else {
            addToRight(node);
            rightNode = rightNode.rebalance(rightNode);
        }
    }

    Node rebalance(Node node) {
        Node newRoot = node;
        if (node.isUnbalanced()) {
            int leftHeight = node.leftNode == null ? 0 : node.leftNode.height();
            int rightHeight = node.rightNode == null ? 0 : node.rightNode.height();
            if (leftHeight > rightHeight) {
                Node oldRoot = node;
                Node rootLeftNode = node.leftNode;
                oldRoot.leftNode = rootLeftNode.rightNode;

                newRoot = rootLeftNode;
                newRoot.rightNode = oldRoot;

            } else if (rightHeight > leftHeight) {
                Node oldRoot = node;
                Node rootRightNode = node.rightNode;
                oldRoot.rightNode = rootRightNode.leftNode;

                newRoot = rootRightNode;
                newRoot.leftNode = oldRoot;

            }
        }
        return newRoot;
    }

    boolean isUnbalanced() {
        int leftHeight = leftNode == null ? 0 : leftNode.height() + 1;
        int rightHeight = rightNode == null ? 0 : rightNode.height() + 1;
        return Math.abs(leftHeight - rightHeight) > 1;
    }

    int height() {
        int leftHeight = 0;
        int rightHeight = 0;

        if (leftNode != null) {
            leftHeight = leftNode.height() + 1;
        }

        if (rightNode != null) {
            rightHeight = rightNode.height() + 1;
        }

        return Math.max(leftHeight, rightHeight);
    }

    private void addToLeft(Node node) {
        if (leftNode == null) {
            leftNode = node;
        } else {
            leftNode.add(node);
//            if (leftNode.isUnbalanced()) {
//                leftNode = leftNode.rebalance(leftNode);
//            }
        }
    }

    private void addToRight(Node node) {
        if (rightNode == null) {
            rightNode = node;
        } else {
            rightNode.add(node);
//            if (rightNode.isUnbalanced()) {
//                rightNode = rightNode.rebalance(rightNode);
//            }
        }
    }

//    @Override
//    public String toString() {
//        if (leftNode == null && rightNode == null) {
//            return "";
//        }
//        String description = "\n-----------------\n";
//        if (leftNode != null) {
//            description += leftNode.toString();
//        }
//        if (rightNode!= null) {
//            description += rightNode.toString();
//        }
//        description += "\n-----------------\n";
//
//        if (rightNode != null) {
//            description = rightNode.value + description;
//        }
//        description = "-" + description;
//        if (leftNode != null) {
//            description = leftNode.value + description;
//        }
//
//
//
//        return description;
//    }
}
