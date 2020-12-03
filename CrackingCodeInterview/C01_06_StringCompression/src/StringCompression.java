public class StringCompression {
    public String compress(String string) {
        int counter = 1;
        StringBuilder compressedString = new StringBuilder();
        for (int i = 1; i < string.length(); i++) {
            if (string.charAt(i) == string.charAt(i - 1)) {
                counter++;
            } else {
                compressedString.append(string.charAt(i - 1));
                compressedString.append(counter);
                counter = 1;
            }
        }
        compressedString.append(string.charAt(string.length() - 1));
        compressedString.append(counter);

        return compressedString.length() > string.length() ? string : compressedString.toString();
    }
}
