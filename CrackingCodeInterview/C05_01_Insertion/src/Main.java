public class Main {

    public static void main(String[] args) {
        BitInsertor bitInsertor = new BitInsertor();

        System.out.println(Integer.toBinaryString(bitInsertor.insert(
                Integer.parseInt("10000010100", 2),
                Integer.parseInt("10011", 2),
                2,
                6)));
    }
}
