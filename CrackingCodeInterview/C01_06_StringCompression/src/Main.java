public class Main {

    public static void main(String[] args) {
        StringCompression stringCompression = new StringCompression();
        System.out.println(stringCompression.compress("Hello World!"));
        System.out.println(stringCompression.compress("aaaaaaaa"));
        System.out.println(stringCompression.compress("aabcccaaa"));
        System.out.println(stringCompression.compress("abcccccccccccccccccdef"));
    }
}
