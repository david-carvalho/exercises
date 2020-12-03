import java.util.Arrays;

public class SmallestDifference {
    int calculate(int[] array1, int[] array2) {
        Arrays.sort(array1);
        Arrays.sort(array2);

        int i = 0, j = 0;
        int currentSmallestIndex1 = 0, currentSmallestIndex2 = 0;
        int currentSmallestDifference = absoluteDifference(array1[currentSmallestIndex1], array2[currentSmallestIndex2]);
        while (i < array1.length && j < array2.length) {
            int difference = absoluteDifference(array1[i], array2[j]);
            if (difference < currentSmallestDifference) {
                currentSmallestDifference = difference;
                currentSmallestIndex1 = i;
                currentSmallestIndex2 = j;
            }

            if (array1[i] < array2[j]) {
                i++;
            } else {
                j++;
            }
        }

        return absoluteDifference(array1[currentSmallestIndex1], array2[currentSmallestIndex2]);
    }

    private int absoluteDifference(int x, int y) {
        return Math.abs(x - y);
    }
}
