public class SparseSearch {
    int search(String target, String[] array) {
        return search(target, array, 0, array.length);
    }

    private int search(String target, String[] array, int start, int end) {
        int middle = start + (end - start) / 2;
        if (array[middle].equals(target)) {
            return middle;
        }

        int counter = 1;
        int left = middle - counter;
        int right = middle + counter;
        while (left >= start && right < end && !array[left].isEmpty() && !array[right].isEmpty()) {
            counter++;
            left = middle - counter;
            right = middle + counter;
        }

        if (array[left].equals(target)) {
            return left;
        }

        if (array[right].equals(target)) {
            return right;
        }

        if (left == start) {
            return search(target, array, middle, end);
        }

        if (right == end) {
            return search(target, array, start, middle);
        }

        if (!array[right].isEmpty()) {
            middle = right;
        } else {
            middle = left;
        }

        if (array[middle].equals(target)) {
            return middle;
        }

        if (array[middle].compareTo(target) > 0) {
            return search(target, array, start, middle - 1);
        } else {
            return search(target, array, middle + 1, end);
        }
    }
}
