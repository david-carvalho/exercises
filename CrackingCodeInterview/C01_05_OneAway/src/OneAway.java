public class OneAway {

    public boolean isOneAway(String str1, String str2) {
        if (Math.abs(str1.length() - str2.length()) > 1) {
            return false;
        }

        if (str1.length() > str2.length()) {
            return calculateIsOneAway(str1, str2);
        } else {
            return calculateIsOneAway(str2, str1);
        }
    }

    private boolean calculateIsOneAway(String str1, String str2) {
        int edits = 0;
        int counter1 = 0;
        int counter2 = 0;

        while (counter1 < str1.length() && counter2 < str2.length()) {
            if (str1.charAt(counter1) != str2.charAt(counter2)) {
                if (str1.length() != str2.length()) {
                    counter1++;
                }
                edits++;
            }

            counter1++;
            counter2++;
            if (edits > 1) {
                return false;
            }
        }

        return true;
    }
}
