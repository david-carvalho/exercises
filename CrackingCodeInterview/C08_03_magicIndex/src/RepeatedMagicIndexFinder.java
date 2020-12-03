public class RepeatedMagicIndexFinder implements MagicIndexFinder {

    @Override
    public int findMagicIndex(int[] array) {
        if (array.length == 0) {
            return -1;
        }

        return findMagicIndexInsubArray(array, 0, array.length - 1);
    }

    private int findMagicIndexInsubArray(int[] array, int startIndex, int endIndex) {
        if (startIndex == endIndex && array[startIndex] == startIndex) {
            return startIndex;
        } else if (startIndex == endIndex) {
            return -1;
        }
        int currentArrayLength = endIndex - startIndex + 1;
        int middleIndex = startIndex + currentArrayLength / 2;
        int middleValue = array[middleIndex];
        if (middleValue == middleIndex) {
            return middleIndex;
        }


        int leftMagicIndex = findMagicIndexInsubArray(array, startIndex + currentArrayLength / 2 + 1, endIndex);
        if (leftMagicIndex > -1) {
            return leftMagicIndex;
        }


        int rightMagicIndex = findMagicIndexInsubArray(array, startIndex, endIndex - currentArrayLength / 2 - 1);
        if (rightMagicIndex > -1) {
            return rightMagicIndex;
        }

        return -1;
    }
}
