
import java.util.Arrays;
import java.util.HashMap;

public class StringChecker {
    public boolean isUniqueHashMap(String string) {
        HashMap<Character, Boolean> map = new HashMap();
        for (int i = 0; i < string.length(); i++) {
            if (map.containsKey(string.charAt(i))) {
                return false;
            }
            map.put(string.charAt(i), Boolean.TRUE);
        }

        return true;
    }

    public boolean isUniqueArray(String string) {
        boolean[] found = new boolean[1024];
        for (int i = 0; i < string.length(); i++) {
            if (found[string.charAt(i)]) {
                return false;
            }
            found[string.charAt(i)] = true;
        }

        return true;
    }

    public boolean isUniqueSorting(String string) {
        char[] charArray = string.toCharArray();
        Arrays.sort(charArray);
        String orderedString = new String(charArray);
        for (int i = 1; i < orderedString.length(); i++) {
            if (orderedString.charAt(i - 1) == orderedString.charAt(i)) {
                return false;
            }
        }

        return true;
    }
}
