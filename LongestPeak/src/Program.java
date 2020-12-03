import java.util.*;

class Program {
    public static int longestPeak(int[] array) {
        if (array.length == 0) {
            return 0;
        }

        int i = 1;
        int size = 0;
        while (i < array.length - 1) {
            boolean isPeak = array[i] > array[i - 1] && array[i] > array[i + 1];
            if (!isPeak) {
                i++;
                continue;
            }
            int left = i - 1;
            while(left >= 1 && array[left] > array[left - 1]) {
                left--;
            }

            int right = i + 1;


            while(right < array.length - 1 && array[right] > array[right + 1]) {
                right++;
            }
            size = Math.max(size, right - left + 1);
            i = right;
        }

        return size;
    }
}



