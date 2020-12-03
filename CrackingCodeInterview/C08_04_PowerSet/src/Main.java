import java.util.ArrayList;
import java.util.Set;

public class Main {

    public static void main(String[] args) {
        PowerSetCreator powerSetCreator = new PowerSetCreator();
        int[] array = new int[]{1, 2, 3, 4};
        ArrayList<Set<Integer>> set = powerSetCreator.createSets(array);
        System.out.println(set);
    }
}
