public class Main {

    public static void main(String[] args) {

        PermutationChecker permutationChecker = new PermutationChecker();

        System.out.println(permutationChecker.checkPermutation("abc", "bca"));
        System.out.println(permutationChecker.checkPermutation("abca", "bzca"));
        System.out.println(permutationChecker.checkPermutation("abca", "bcaa"));
    }
}
