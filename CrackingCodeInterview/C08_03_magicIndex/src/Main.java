public class Main {

    public static void main(String[] args) {
        MagicIndexFinder magicIndexFinder = new RepeatedMagicIndexFinder();
        int[] array = new int[]{ -20, 0, 0, 0, 3, 4, 6 };
        System.out.println(magicIndexFinder.findMagicIndex(array));
    }
}
