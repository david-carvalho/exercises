public class PermutationChecker {

    private final int MAX_CHAR = 1024;

    public boolean checkPermutation(String string1, String string2) {
        if (string1.length() != string2.length()) {
            return false;
        }


        int[] stringCounter1 = counterArray(string1);
        int[] stringCounter2 = counterArray(string2);

        for (int i = 0; i < MAX_CHAR; i++) {
            if (stringCounter1[i] != stringCounter2[i]) {
                return false;
            }
        }
        return true;
    }

    private int[] counterArray(String string) {
        int length = string.length();
        int[] stringCounter = new int[MAX_CHAR];

        for (int i = 0; i < length; i++) {
            stringCounter[string.charAt(i)] += 1;
        }
        return stringCounter;
    }
}
