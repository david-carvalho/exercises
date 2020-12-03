public class Main {

    public static void main(String[] args) {
        int[] array1 = {1, 3, 15, 11, 2};
        int[] array2 = {23, 127, 235, 19, 8};
        SmallestDifference smallestDifference = new SmallestDifference();

        System.out.println(smallestDifference.calculate(array1, array2));
    }
}
