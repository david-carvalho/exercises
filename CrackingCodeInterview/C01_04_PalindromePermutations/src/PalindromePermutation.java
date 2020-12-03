public class PalindromePermutation {

    public boolean isPalindromePermutation(String phrase) {
        int bitVector = createBitVector(phrase.toLowerCase());
        return checkIsPalindromePermutation(bitVector);
    }

    private int toggle(int bitVector, int index) {
        if (index < 0) {
            return bitVector;
        }
        int mask = 1 << index;
        bitVector = bitVector ^ mask;
        return bitVector;
    }

    private int createBitVector(String phrase) {
        int bitVector = 0;
        for (char c: phrase.toCharArray()) {
            int index = c - 97;
            bitVector = toggle(bitVector, index);
        }
        return bitVector;
    }

    private boolean checkIsPalindromePermutation(int bitVector) {
        return (bitVector & (bitVector - 1)) == 0;
    }
}
