public class BSTValidator {
    public boolean validate(Node root) {
        return evaluate(root, null, null);
    }

    private boolean evaluate(Node node, Integer min, Integer max) {
        if (node == null) {
            return true;
        }

        if (checkValuesAreValid(node.value, min, max)) {
            return evaluate(node.left, min, node.value) &&
                    evaluate(node.right, node.value, max);
        } else {
            return false;
        }
    }

    private boolean checkValuesAreValid(int value, Integer min, Integer max) {
        boolean minCheck = min != null && value > min.intValue() || min == null;
        boolean maxCheck = max != null && value <= max.intValue() || max == null;
        return minCheck && maxCheck;
    }
}
