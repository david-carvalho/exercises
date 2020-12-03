import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        ArraySearch arraySearch = new ArraySearch();
        int[] array = new int[]{2, 5, 7, 9, 12, 15, 18, 19, 20, 21, 26, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        for (int i = 0; i < array.length && array[i] > -1; i++) {
            System.out.println(arraySearch.find(array, array[i]));
        }

    }
}
