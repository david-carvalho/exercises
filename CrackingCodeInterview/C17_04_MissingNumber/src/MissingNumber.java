import java.util.ArrayList;

public class MissingNumber {
    public int find(ArrayList<BitInteger> array) {
        boolean currentExpectedLsb = false;
        for (int i = 0; i < array.size(); i++) {
            if (array.get(i).bitAt(BitInteger.INTEGER_SIZE - 1) != currentExpectedLsb) {
                return i;
            }
            currentExpectedLsb = !currentExpectedLsb;
        }
        return -1;
    }
}
