public class Main {

    public static void main(String[] args) {

        Palindrome palindrome = new Palindrome();
        int[] nums = new int[] {1, 2, 2, 1};
        System.out.println(palindrome.isPalindrome(buildNodes(nums)));

        int[] nums2 = new int[] {1, 2, 2, 1, 1};
        System.out.println(palindrome.isPalindrome(buildNodes(nums2)));

        int[] nums3 = new int[] {1, 1, 2, 2, 1, 1};
        System.out.println(palindrome.isPalindrome(buildNodes(nums3)));

        int[] nums4 = new int[] {1, 2, 3, 2, 2, 1, 1};
        System.out.println(palindrome.isPalindrome(buildNodes(nums4)));
    }

    private static Node buildNodes(int[] nums) {
        Node initialNode = new Node();
        Node node = null;

        for (int num: nums) {
            if (node == null) {
                node = initialNode;
            } else {
                node.next = new Node();
                node = node.next;
            }
            node.value = num;

        }

        return initialNode;
    }
}
