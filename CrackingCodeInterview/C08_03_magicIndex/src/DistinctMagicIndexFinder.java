public class DistinctMagicIndexFinder implements MagicIndexFinder {

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
        } else if (middleValue < middleIndex) {
            return findMagicIndexInsubArray(array, startIndex + currentArrayLength / 2 + 1, endIndex);
        } else {
            return findMagicIndexInsubArray(array, startIndex, endIndex - currentArrayLength / 2 - 1);
        }

    }
}
