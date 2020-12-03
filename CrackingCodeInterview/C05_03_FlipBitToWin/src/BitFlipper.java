public class BitFlipper {
    int biggestSequence(int num) {
        boolean flipped = false;
        int i = 0, j = 0, z = 0;
        int maxSequence = 0;
        int[] array = createBitArray(num);
        while (j < array.length) {
            if (array[j] == 0) {
                if (!flipped) {
                    flipped = true;
                    z = j;
                } else {
                    maxSequence = Math.max(maxSequence, j - i);
                    i = z + 1;
                    j = i;
                    flipped = false;
                }
            }
            j++;
        }
        maxSequence = Math.max(maxSequence, j - i);
        return maxSequence;
    }

    private int[] createBitArray(int num) {
        char[] charArray = Integer.toBinaryString(num).toCharArray();
        int[] bitArray = new int[charArray.length];
        for (int i = 0; i < charArray.length; i++) {
            bitArray[i] = charArray[i] - 48;
        }
        return bitArray;
    }
}
