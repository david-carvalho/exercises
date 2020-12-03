import java.util.Stack;

public class Palindrome {
    public boolean isPalindrome(Node node) {
        int size = node.size();
        int indexStartSecondHalf = size % 2 == 0 ? (size / 2) : size / 2 + 1;
        Stack<Integer> stack = new Stack<>();
        int counter = 0;
        while (node != null) {
            if (counter < indexStartSecondHalf) {
                stack.push(node.value);
            } else {
                if (node.value != stack.pop()) {
                    return false;
                }
            }
            node = node.next;
            counter++;
            if (size % 2 == 1 && counter == indexStartSecondHalf - 1) {
                node = node.next;
                counter++;
            }

        }
        return true;
    }
}
