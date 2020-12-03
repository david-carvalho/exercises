public class Main {

    public static void main(String[] args) {
        SparseSearch sparseSearch = new SparseSearch();
        String[] array = {"at", "", "", "", "ball", "", "", "car", "", "", "dad", "", ""};
        System.out.println(" 0 -  " + sparseSearch.search("at", array));
        System.out.println(" 4 -  " + sparseSearch.search("ball", array));
        System.out.println(" 7 -  " + sparseSearch.search("car", array));
        System.out.println(" 10 -  " + sparseSearch.search("dad", array));
    }
}
