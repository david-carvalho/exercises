public class Main {

    public static void main(String[] args) {
        SumList sumList = new SumList();
        Node sum = sumList.sumLists(buildFirstList(), buildSecondList());
        System.out.println(sum);
    }

    private static Node buildFirstList() {
        int[] nums = new int[] {9, 7, 8};
        return buildNodes(nums);
    }

    private static Node buildSecondList() {
        int[] nums = new int[] {6, 8, 5};
        return buildNodes(nums);
    }

    private static Node buildNodes(int[] nums) {
        Node initialNode = new Node();
        Node node = initialNode;

        for (int num: nums) {
            node.value = num;
            node.next = new Node();
            node = node.next;
        }

        return initialNode;
    }
}
