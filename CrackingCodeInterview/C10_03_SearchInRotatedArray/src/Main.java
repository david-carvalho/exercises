public class Main {

    public static void main(String[] args) {

        int[] array = new int[]{15, 16, 18, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14};
        Main.run(array);
        int[] array2 = new int[]{70, 75, 17, 18, 30, 31, 35, 50, 60};
        Main.run(array2);
    }

    private static void run(int[] array) {
        RotatedArraySearch rotatedArraySearch = new RotatedArraySearch();
        for (int i = 0;  i < array.length - 1; i++) {
            System.out.println(rotatedArraySearch.search(array, array[i]));
        }

        System.out.println(rotatedArraySearch.search(array, 200));
    }
}
