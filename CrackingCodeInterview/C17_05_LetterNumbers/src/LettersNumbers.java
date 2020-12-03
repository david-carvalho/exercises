public class LettersNumbers {
    int[] subarray(int[] array) {
        boolean countingLetters = isLetter(array[0]);
        int counterLetters = 0;
        int counterNumbers = 0;
        int currentBiggestArraySize = 0;
        for (int i = 0; i < array.length; i++) {
            if (isLetter(array[i])) {
                if (countingLetters) {
                    counterLetters++;
                } else {
                    if (counterLetters > 0 && counterNumbers > 0) {
                        if (counterLetters + counterNumbers > currentBiggestArraySize) {
                            currentBiggestArraySize = counterLetters + counterNumbers;
                        }
                    }
                    counterLetters = 1;
                    countingLetters = true;
                }
            } else {
                if (countingLetters) {
                    if (counterLetters > 0 && counterNumbers > 0) {
                        if (counterLetters + counterNumbers > currentBiggestArraySize) {
                            currentBiggestArraySize = counterLetters + counterNumbers;
                        }
                    }
                    counterNumbers = 1;
                    countingLetters = false;
                } else {
                    counterNumbers++;
                }
            }
        }
    }

    private boolean isLetter(int c) {
        return c >= 97 && c <= 122;
    }

    private boolean isNumber(int c) {
        return c >= 48 && c <= 57;
    }
}
