public class ArraySearch {
    public int find(int[] array, int target) {
        int size = size(array);

        return doBinarySearch(array, 0, size - 1, target);
    }

    private int doBinarySearch(int[] array, int start, int end, int target) {
        int middle = start + (end - start) / 2;
        if (array[middle] == target) {
            return middle;
        }

        if (array[middle] == -1 || array[middle] > target) {
            // do left search
            return doBinarySearch(array, start, middle - 1, target);
        } else {
            // do right search
            return doBinarySearch(array, middle + 1, end, target);
        }
    }

    private int size(int[] array) {
        int index = 0;
        while (array[index] > -1) {
            index = index * 2 + 1;
        }
        return index;
    }

}
