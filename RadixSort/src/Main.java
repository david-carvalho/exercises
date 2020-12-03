public class Main {

    public static void main(String[] args) {
        RadixSorter radixSorter = new RadixSorter();
        String[] unsortedArray = new String[] { "luke", "leia", "anakin", "padme" };
        String[] array = radixSorter.sorter(unsortedArray);
        System.out.println(array);
    }
}
