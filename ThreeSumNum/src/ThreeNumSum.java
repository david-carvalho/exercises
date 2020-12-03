import java.util.Arrays;
import java.util.List;

public class ThreeNumSum {
    void threeNumberSum(int[] array, int targetSum) {
        Arrays.sort(array);
        for (int i = 0; i < array.length; i++) {
            array[i] = array[i] - targetSum;
        }

        int sumNegatives = 0;
        int sumPositives = 0;
        int i = 0;
        while (array[i] < 0) {
            sumNegatives += array[i];
            i++;
        }

        i = array.length - 1;
        while (array[i] > 0) {
            sumPositives += array[i];
            i--;
        }

        i = 0;
        int j = array.length - 1;

        while (i != j) {
            int target = (array[i] + array[j]) * -1;
            int targetIndex = binarySearch(array, target, i, j);
            if (targetIndex > 0) {
                System.out.print("FOUND: " + array[i] + " - " + target + " - " + array[j]);
            }

            if (sumPositives > Math.abs(sumNegatives)) {
                sumPositives -= array[j];
                j--;
            } else {
                sumNegatives += array[i];
                i++;
            }
        }
    }

    private int binarySearch(int[] array, int target, int start, int end) {
        if (start >= end) {
            return -1;
        }

        if (array.length == 0) {
            return -1;
        }

        int middle = start + (end - start) / 2;
        if (array[middle] == target) {
            return middle;
        }

        if (array[middle] > target) {
            return binarySearch(array, target, start, middle);
        }

        if (array[middle] < target) {
            return binarySearch(array, target, middle + 1, end);
        }

        return -1;
    }
}
