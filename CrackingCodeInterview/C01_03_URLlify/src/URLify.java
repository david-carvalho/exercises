public class URLify {
    public void urlify(char[] string, int trueLength) {
        int numberSpaces = countSpaces(string, trueLength);
        int finalIndex = trueLength - 1 + numberSpaces * 2;
        int currentIndex = trueLength - 1;
        while (currentIndex > -1) {
            if (string[currentIndex] == ' ') {
                string[finalIndex] = '0';
                string[finalIndex - 1] = '2';
                string[finalIndex - 2] = '%';
                finalIndex -= 3;
            } else {
                string[finalIndex] = string[currentIndex];
                finalIndex--;
            }
            currentIndex--;
        }

    }

    private int countSpaces(char[] string, int trueLength) {
        int count = 0;
        trueLength--;
        while (trueLength > -1) {
            if (string[trueLength] == ' ' ) {
                count++;
            }
            trueLength--;
        }
        return count;
    }
}
