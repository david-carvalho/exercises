public class BitInteger {

    static final int INTEGER_SIZE = 32;
    private boolean[] bits = new boolean[INTEGER_SIZE];

    BitInteger(String str) {
        int len = str.length();
        int x = INTEGER_SIZE - len;
        int i = 0;

        for (int j = x; j <= INTEGER_SIZE && i < len; j++, i++) {
            if (str.charAt(i) == '1')
                bits[j] = true;
            else
                bits[j] = false;
        }
    }

    boolean bitAt(int index) {
        if (index > INTEGER_SIZE) {
            return false;
        }

        return bits[index];
    }
}
