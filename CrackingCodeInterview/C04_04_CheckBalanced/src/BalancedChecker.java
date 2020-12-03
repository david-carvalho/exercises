public class BalancedChecker {
    public boolean isBalanced(Node root) {
        if (root == null) {
            return true;
        }

        try {
            checkHeight(root);
        } catch (UnbalancedTreeException e) {
            return false;
        }
        return true;
    }

    private int checkHeight(Node node) throws UnbalancedTreeException {
        int leftHeight = node.leftNode == null ? 0 : checkHeight(node.leftNode);
        int rightHeight = node.rightNode == null ? 0 : checkHeight(node.rightNode);

        if (Math.abs(leftHeight - rightHeight) > 1) {
            throw new UnbalancedTreeException();
        }

        return Math.max(leftHeight, rightHeight) + 1;
    }

    private class UnbalancedTreeException extends Exception {

    }
}
