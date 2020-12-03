public class RotatedArraySearch {
    public int search(int[] array, int value) {
        return search(array, 0, array.length - 1, value);
    }

    private int search(int[] array, int startFirstArray, int endSecondArray, int value) {
        if (array.length == 0) {
            return -1;
        }

        if (array[startFirstArray] == value) {
            return startFirstArray;
        }

        if (array[endSecondArray] == value) {
            return endSecondArray;
        }

        if (startFirstArray == endSecondArray) {
            return -1;
        }

        int middleIndex = startFirstArray + (endSecondArray - startFirstArray) / 2;
        int endFirstArray = middleIndex;
        int startSecondArray = middleIndex + 1;

        if (array[endFirstArray] == value) {
            return endFirstArray;
        }

        if (array[startSecondArray] == value) {
            return startSecondArray;
        }

        if (array[startFirstArray] < array[endFirstArray]) {
            if (value > array[startFirstArray] && value < array[endFirstArray]) {
                return search(array, startFirstArray, endFirstArray, value);
            } else if (value > array[startSecondArray] || value < array[endSecondArray]) {
                return search(array, startSecondArray, endSecondArray, value);
            } else {
                return -1;
            }
        } else {
            if (value > array[startSecondArray] && value < array[endSecondArray]) {
                return search(array, startSecondArray, endSecondArray, value);
            } else if (value > array[startFirstArray] || value < array[endFirstArray]) {
                return search(array, startFirstArray, endFirstArray, value);
            } else {
                return -1;
            }
        }

    }
}
