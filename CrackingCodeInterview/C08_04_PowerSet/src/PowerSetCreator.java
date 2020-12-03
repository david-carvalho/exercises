import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class PowerSetCreator {
    private HashMap<Integer, Node> hash = new HashMap<>();

    public ArrayList<Set<Integer>> createSets(int[] array) {
        if (array.length == 0) {
            return new ArrayList<>();
        }

        if (array.length == 1) {
            ArrayList<Set<Integer>> startingArray = new ArrayList<>();
            startingArray.add(new HashSet<>());
            Set<Integer> set = new HashSet<>();
            set.add(array[0]);
            startingArray.add(set);
            return startingArray;
        }

        ArrayList<Set<Integer>> arrayWithAllSets = new ArrayList<>();
//        while (array.length > 1) {
            int lastValue = array[array.length - 1];
            array = arrayWithoutLast(array);
            ArrayList<Set<Integer>> setFromSubArray = createSets(array);

            ArrayList<Set<Integer>> arrayWithLastValue = new ArrayList<>();
            for (Set<Integer> set: setFromSubArray) {
                Set<Integer> setCopy = new HashSet<>(set);
                setCopy.add(lastValue);
                arrayWithLastValue.add(setCopy);
            }

            arrayWithAllSets.addAll(setFromSubArray);
            arrayWithAllSets.addAll(arrayWithLastValue);
//        }
        return arrayWithAllSets;

    }

    private int[] arrayWithoutLast(int[] array) {
        int newArrayLength = array.length - 1;
        int[] arrayWithoutLast = new int[newArrayLength];
        for (int i = 0; i < newArrayLength; i++) {
            arrayWithoutLast[i] = array[i];
        }
        return arrayWithoutLast;
    }
}
