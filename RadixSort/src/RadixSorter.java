import java.util.ArrayList;

public class RadixSorter {
    public String[] sorter(String[] array) {
        int maxKeyLength = 0;
        for (String string: array) {
            maxKeyLength = Math.max(maxKeyLength, string.length());
        }

        ArrayList<ArrayList<String>> currentResultList = new ArrayList<>();

        for (int j = 0; j < 25; j++) {
            currentResultList.add(new ArrayList<>());
        }

        for (String string: array) {
            currentResultList.get(0).add(string);
        }

        for (int i = maxKeyLength; i > -1; i--) {
            ArrayList<ArrayList<String>> list = new ArrayList<>();

            for (int j = 0; j < 25; j++) {
                list.add(new ArrayList<>());
            }

            for (ArrayList<String> bucketList: currentResultList) {
                for (String string: bucketList) {
                    int index = 0;
                    if (i < string.length()) {
                        index = string.charAt(i) - 97;
                    }
                    list.get(index).add(string);
                }
            }

            currentResultList = list;
        }

        String[] result = new String[array.length];
        int counter = 0;
        for (ArrayList<String> bucketList: currentResultList) {
            for (String string: bucketList) {
                result[counter] = string;
                counter++;
            }
        }
        return result;
    }
}
