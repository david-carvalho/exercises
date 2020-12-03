public class RemoveDuplicatesfromSortedArray {
    public static void main(String[] args) {
        RemoveDuplicatesfromSortedArray solution = new RemoveDuplicatesfromSortedArray();
        int[] nums = {0, 0, 0, 0, 1, 1, 1, 1};
        System.out.println(solution.removeDuplicates(nums));
    }

    public int removeDuplicates(int[] nums) {
        if (nums.length == 0) return 0;
        int i = 0;
        for (int j = 1; j < nums.length; j++) {
            if (nums[j] != nums[i]) {
                i++;
                nums[i] = nums[j];
            }
        }
        return i + 1;
    }
}
