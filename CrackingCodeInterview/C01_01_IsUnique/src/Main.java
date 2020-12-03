public class Main {
    public static void main(String[] args) {
        StringChecker stringChecker = new StringChecker();
        System.out.println(stringChecker.isUniqueHashMap("abc"));
        System.out.println(stringChecker.isUniqueHashMap("aba"));

        System.out.println(stringChecker.isUniqueArray("abc"));
        System.out.println(stringChecker.isUniqueArray("aba"));

        System.out.println(stringChecker.isUniqueSorting("abc"));
        System.out.println(stringChecker.isUniqueSorting("aba"));
    }
}

